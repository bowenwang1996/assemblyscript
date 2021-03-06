// Common error messages for use accross the standard library. Keeping error messages compact
// and reusing them where possible ensures minimal static data in binaries.

// @ts-ignore: decorator
@lazy @inline
export const E_INDEXOUTOFRANGE: string = "Index out of range";

// @ts-ignore: decorator
@lazy @inline
export const E_INVALIDLENGTH: string = "Invalid length";

// @ts-ignore: decorator
@lazy @inline
export const E_EMPTYARRAY: string = "Array is empty";

// @ts-ignore: decorator
@lazy @inline
export const E_HOLEYARRAY: string = "Element type must be nullable if array is holey";

// @ts-ignore: decorator
@lazy @inline
export const E_NOTIMPLEMENTED: string = "Not implemented";

// @ts-ignore: decorator
@lazy @inline
export const E_KEYNOTFOUND: string = "Key does not exist";
