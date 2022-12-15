uint ackermann (uint m, uint n) {
    uint edi = m ;
    uint esi = n ;
    if (edi == 0) {
	// 5ddb8
	return n - 1;
    }

    int eax = m - 1;
    int _0xc = eax;
    int _0x8;
    if (esi == 0) {
	// 5ddd0
	_0xc = m;
	esi = esi - 1;
	goto _5db50;
    }
	

_5db50:
    eax = _0xc;
    edi = eax - 1;
    _0x8 = edi;
    if (esi != 0) goto _5ddc0;
    else goto _5db63;

_5db63:
    eax = _0x8;
    if (eax == 0) goto _5dd30;

_5db6f:
    eax = _0x8;
    int r14d = eax - 1;
    if (esi != 0) goto _5dda8;
    if (r14d == 0) goto _5dd10;

_5db88:
    eax = r14d;
    r13d = eax - 1;
    if (esi != 0) goto _5dd98;

_5db97:
    if (r13d == 0) goto _5dd00;

_5dba0:
    eax = r13d;
    ecx = eax - 1;
    if (esi != 0) goto _5dd88;

_5dbae:
    if (ecx == 0) goto _5dcc0;


_5dbb6:
    eax = ecx;
    edx = eax - 1;
    if (esi != 0) goto 5dd78;

_5dbc3:
    eax = edx;
    r15d = eax - 1;
    if (esi != 0) goto 5dd68;



  
_5ddc0:
_5dd30:
_5dda8:
_5dd10:
