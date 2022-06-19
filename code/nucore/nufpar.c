#include "nufpar.h"
#include "nufile.h"

#define LF 0xA;
#define CR 0xD;

u32 old_line_pos;

char NuGetChar(FPar* fPar)
{
    s32 bufferEndPos = fPar->bufferEndPos;
    char ret;
    if (bufferEndPos < 0)
    {
        bufferEndPos = 0;
    }
    if (fPar->pos > fPar->bufferEndPos)
    {
        if (fPar->fileLength > bufferEndPos + 1)
        {
            size_t size = fPar->fileLength - bufferEndPos;
            if (size > 0x1000)
            {
                size = 0x1000;
            }
            size = NuFileRead(fPar->handle, fPar->buffer, size);
            bufferEndPos = fPar->bufferEndPos;
            fPar->bufferEndPos = bufferEndPos + size;
            fPar->bufferPos = bufferEndPos + 1;
            if (size != 0)
            {
                ret = fPar->buffer[fPar->pos - fPar->bufferPos];
                fPar->pos++;
                return ret;
            }
        }
        ret = 0;
    }
    else
    {
        ret = fPar->buffer[fPar->pos - fPar->bufferPos];
        fPar->pos++;
    }
    return ret;
}

u32 NuFParGetWord(FPar* fPar)
{
    u32 currLinePos = old_line_pos = fPar->linePos;
    u32 len = 0;
    u32 inQuotation = 0;
    while (fPar->textBuffer[currLinePos & 0xFF] != 0)
    {
        char currChar = fPar->textBuffer[fPar->linePos];
        switch (currChar)
        {
            case ' ':
            case ',':
            case '\t':
                if (inQuotation)
                {
                    (fPar->wordBuffer + 1)[len & 0xff] = currChar;
                    len++;
                }
                else if (len != 0)
                {
                    (fPar->wordBuffer + 1)[len & 0xFF] = 0;
                    return len;
                }
                break;
            case '"':
                inQuotation = 1 - inQuotation;
                break;
            default:
                (fPar->wordBuffer + 1)[len & 0xff] = currChar;
                len++;
                break;
        }
        currLinePos = fPar->linePos + 1;
        fPar->linePos = currLinePos;
    }
    fPar->wordBuffer[(len & 0xFF) + 1] = 0;
    return len;
}

s32 NuFParGetInt(FPar* fPar)
{
    NuFParGetWord(fPar);
    s32 ret = 0;
    if (fPar->wordBuffer[1] != 0)
    {
        ret = atoi((char*)(fPar->wordBuffer + 1));
    }
    return ret;
}

s32 NuFParPushCom(FPar* fPar, s32 command)
{
    s32 ind = fPar->commandStack[7];
    if (ind < 7)
    {
        fPar->commandStack[7] = ind + 1;
        fPar->commandStack[ind] = command;
        return fPar->commandStack[7];
    }
    return -1;
}

void NuFParClose(FPar* fPar)
{
    NuMemFree(fPar);
}

FPar* NuFParOpen(fileHandle handle)
{
    FPar* fPar = NuMemAlloc(sizeof(FPar));
    if(fPar != NULL)
    {
        memset(fPar, 0, sizeof(FPar));
        fPar->handle = handle;
        fPar->commandStack[7] = -1;
        fPar->bufferEndPos = -1;
        fPar->f2 = 0xffffffff;
        u32 originalPos = NuFilePos(handle);
        NuFileSeek(handle, 0, 2);
        fPar->fileLength = NuFilePos(handle);
        // fPar->fileLength = filelength;
        NuFileSeek(handle, originalPos, 0);
    }

    return fPar;
}

void NuFParDestroy(FPar* fPar)
{
    fileHandle handle = fPar->handle;
    NuFParClose(fPar);
    NuFileClose(handle);
}

FPar* NuFParCreate(char* filename)
{
    fileHandle handle = NuFileOpen(filename, 0);
    if (handle != NULL)
    {
        FPar* fPar = NuFParOpen(handle);
        if (fPar != NULL)
        {
            return fPar;
        }
        NuFileClose(handle);
    }
    return NULL;
}

s32 NuFParGetLine(FPar* fPar) {
    s32 i;
    char ch;
    char* textBuffer_ptr;

    i = 0;
    fPar->linePos = 0;
    
    char inc_f2_flag = 1;
    while ((ch = NuGetChar(fPar)) != 0) {
        if(inc_f2_flag) {
            fPar->f2 += 1;
            inc_f2_flag = 0;
        }
        
        if ((ch == CR) || (ch == LF)) {
            if(ch == CR) {
                ch = NuGetChar(fPar);
            }
            if (i == 0) {
                inc_f2_flag = 1;
            } else {
                break;
            }
                
        } else {
            if (ch == 0x3B) {
                if (i == 0) {
                    do {
                        ch = NuGetChar(fPar);
                    } while(!((ch == LF) || (ch == CR) || (ch == 0)));
                    if(ch == CR) {
                        ch = NuGetChar(fPar);
                    }
                    i = 0;
                    fPar->linePos = 0;
                    inc_f2_flag = 1;
                    continue;
                }
            }
            fPar->textBuffer[i] = ch;
            i += 1;
        }
    }
    fPar->textBuffer[i] = 0;
    return i;
}


/*
// ppc2c output

s32 gcc2_compiled__N132(s32, void*);

? NuFParInterpretWord(void* arg0) {
    s32 temp_r10;
    s32 var_r30;
    void* temp_r11;

    //fileLength
    temp_r10 = arg0->unk123C;
    if (temp_r10 >= 0) {
        temp_r11 = arg0 + 0x121C;
        if ((s32) **(temp_r11 + (temp_r10 * 4)) != 0) {
            var_r30 = 0;
loop_3:
            if (gcc2_compiled__N132(*(var_r30 + *(temp_r11 + (arg0->unk123C * 4))), arg0 + 0x1105) == 0) {
                (var_r30 + *(temp_r11 + (arg0->unk123C * 4)))->unk4(arg0);
                return 1;
            }
            var_r30 += 8;
            if ((s32) *(var_r30 + *(temp_r11 + (arg0->unk123C * 4))) == 0) {
                goto block_6;
            }
            goto loop_3;
        }
    }
block_6:
    return 0;
}
*/

/*
// I think commandStack might be an array of pointers to arrays of unkFParStruct? Refer to line 251 for comment
 NuFParInterpretWord(FPar* fPar) {
    s32 i;
    if (fPar->fileLength >= 0) {
        //if ((s32) **(temp_r11 + (fileLength * 4)) != 0) {
		if ((fPar->commandStack[fPar->fileLength])[0].x0_unk != 0) {
            i = 0;
			do {
				//if (gcc2_compiled__N132(*(var_r30 + *(commandStack + (fPar->fileLength * 4))), fPar + 0x1105) == 0) {
				if (gcc2_compiled__N132((fPar->commandStack[fPar->fileLength])[0].x0_unk, fPar.wordBuffer+1) == 0) {
					//(var_r30 + *(commandStack + (fPar->fileLength * 4)))->unk4(fPar);
					// It seems like the second entry in the struct is a function pointer?
					(fPar->commandStack[fPar->fileLength])[i].x4_unk_cb(fPar);
					return 1;
				}
				i += 1;
			} while(fPar->commandStack[fPar->fileLength])[i].x0_unk != 0);
        }
    }
	return 0;
}
*/