(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$vi (func (param i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 56) "\10\00\00\00(\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s\00")
 (data (i32.const 104) "\10\00\00\00$\00\00\00s\00t\00d\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 152) "\0f\00\00\00\08\00\00\00\01\00\00\00\02\00\00\00")
 (data (i32.const 168) "\10\00\00\00 \00\00\00~\00l\00i\00b\00/\00d\00a\00t\00a\00v\00i\00e\00w\00.\00t\00s\00")
 (data (i32.const 208) "\10\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s\00")
 (data (i32.const 248) "\1d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00!\00\00\00\0e\00\00\00\00\00\00\00\0e\00\00\00\00\00\00\00\0e\00\00\00\00\00\00\00\0e\00\00\00\00\00\00\00\0e\00\00\00\00\00\00\00\0e\00\00\00\00\00\00\00\0e\00\00\00\00\00\00\00\0e\00\00\00\00\00\00\00\0e\00\00\00\00\00\00\00\0e\00\00\00\00\00\00\00\0e\00\00\00\00\00\00\00\0e\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/util/runtime/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/util/runtime/MAX_BYTELENGTH i32 (i32.const 1073741816))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/util/runtime/HEADER_MAGIC i32 (i32.const -1520547049))
 (global $~lib/ASC_NO_ASSERT i32 (i32.const 0))
 (global $std/arraybuffer/buffer (mut i32) (i32.const 0))
 (global $std/arraybuffer/sliced (mut i32) (i32.const 0))
 (global $std/arraybuffer/arr8 (mut i32) (i32.const 0))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $~lib/runtime/RTTI_BASE i32 (i32.const 248))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 488))
 (export "memory" (memory $0))
 (export "$.instanceof" (func $~lib/runtime/runtime.instanceof))
 (export "$.flags" (func $~lib/runtime/runtime.flags))
 (export "$.newObject" (func $~lib/runtime/runtime.newObject))
 (export "$.newString" (func $~lib/runtime/runtime.newString))
 (export "$.newArrayBuffer" (func $~lib/runtime/runtime.newArrayBuffer))
 (export "$.newArray" (func $~lib/runtime/runtime.newArray))
 (export "$.retain" (func $~lib/runtime/runtime.retain))
 (export "$.release" (func $~lib/runtime/runtime.release))
 (export "$.collect" (func $~lib/runtime/runtime.collect))
 (start $start)
 (func $~lib/util/runtime/adjust (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 1
  i32.const 32
  local.get $0
  global.get $~lib/util/runtime/HEADER_SIZE
  i32.add
  i32.const 1
  i32.sub
  i32.clz
  i32.sub
  i32.shl
 )
 (func $~lib/allocator/arena/__mem_allocate (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741824
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/allocator/arena/offset
  local.set $1
  local.get $1
  local.get $0
  local.tee $2
  i32.const 1
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.add
  i32.const 7
  i32.add
  i32.const 7
  i32.const -1
  i32.xor
  i32.and
  local.set $4
  current_memory
  local.set $5
  local.get $4
  local.get $5
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $4
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $2
   local.get $5
   local.tee $3
   local.get $2
   local.tee $6
   local.get $3
   local.get $6
   i32.gt_s
   select
   local.set $3
   local.get $3
   grow_memory
   i32.const 0
   i32.lt_s
   if
    local.get $2
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $4
  global.set $~lib/allocator/arena/offset
  local.get $1
 )
 (func $~lib/memory/memory.allocate (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/allocator/arena/__mem_allocate
  return
 )
 (func $~lib/util/runtime/allocate (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/util/runtime/adjust
  call $~lib/memory/memory.allocate
  local.set $1
  local.get $1
  global.get $~lib/util/runtime/HEADER_MAGIC
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  global.get $~lib/util/runtime/HEADER_SIZE
  i32.add
 )
 (func $~lib/memory/memory.fill (; 5 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  block $~lib/util/memory/memset|inlined.0
   local.get $2
   i32.eqz
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $0
   local.get $1
   i32.store8
   local.get $0
   local.get $2
   i32.add
   i32.const 1
   i32.sub
   local.get $1
   i32.store8
   local.get $2
   i32.const 2
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $0
   i32.const 1
   i32.add
   local.get $1
   i32.store8
   local.get $0
   i32.const 2
   i32.add
   local.get $1
   i32.store8
   local.get $0
   local.get $2
   i32.add
   i32.const 2
   i32.sub
   local.get $1
   i32.store8
   local.get $0
   local.get $2
   i32.add
   i32.const 3
   i32.sub
   local.get $1
   i32.store8
   local.get $2
   i32.const 6
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $0
   i32.const 3
   i32.add
   local.get $1
   i32.store8
   local.get $0
   local.get $2
   i32.add
   i32.const 4
   i32.sub
   local.get $1
   i32.store8
   local.get $2
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   i32.const 0
   local.get $0
   i32.sub
   i32.const 3
   i32.and
   local.set $5
   local.get $0
   local.get $5
   i32.add
   local.set $0
   local.get $2
   local.get $5
   i32.sub
   local.set $2
   local.get $2
   i32.const -4
   i32.and
   local.set $2
   i32.const -1
   i32.const 255
   i32.div_u
   local.get $1
   i32.const 255
   i32.and
   i32.mul
   local.set $4
   local.get $0
   local.get $4
   i32.store
   local.get $0
   local.get $2
   i32.add
   i32.const 4
   i32.sub
   local.get $4
   i32.store
   local.get $2
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $0
   i32.const 4
   i32.add
   local.get $4
   i32.store
   local.get $0
   i32.const 8
   i32.add
   local.get $4
   i32.store
   local.get $0
   local.get $2
   i32.add
   i32.const 12
   i32.sub
   local.get $4
   i32.store
   local.get $0
   local.get $2
   i32.add
   i32.const 8
   i32.sub
   local.get $4
   i32.store
   local.get $2
   i32.const 24
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $0
   i32.const 12
   i32.add
   local.get $4
   i32.store
   local.get $0
   i32.const 16
   i32.add
   local.get $4
   i32.store
   local.get $0
   i32.const 20
   i32.add
   local.get $4
   i32.store
   local.get $0
   i32.const 24
   i32.add
   local.get $4
   i32.store
   local.get $0
   local.get $2
   i32.add
   i32.const 28
   i32.sub
   local.get $4
   i32.store
   local.get $0
   local.get $2
   i32.add
   i32.const 24
   i32.sub
   local.get $4
   i32.store
   local.get $0
   local.get $2
   i32.add
   i32.const 20
   i32.sub
   local.get $4
   i32.store
   local.get $0
   local.get $2
   i32.add
   i32.const 16
   i32.sub
   local.get $4
   i32.store
   i32.const 24
   local.get $0
   i32.const 4
   i32.and
   i32.add
   local.set $5
   local.get $0
   local.get $5
   i32.add
   local.set $0
   local.get $2
   local.get $5
   i32.sub
   local.set $2
   local.get $4
   i64.extend_i32_u
   local.get $4
   i64.extend_i32_u
   i64.const 32
   i64.shl
   i64.or
   local.set $6
   block $break|0
    loop $continue|0
     local.get $2
     i32.const 32
     i32.ge_u
     if
      block
       local.get $0
       local.get $6
       i64.store
       local.get $0
       i32.const 8
       i32.add
       local.get $6
       i64.store
       local.get $0
       i32.const 16
       i32.add
       local.get $6
       i64.store
       local.get $0
       i32.const 24
       i32.add
       local.get $6
       i64.store
       local.get $2
       i32.const 32
       i32.sub
       local.set $2
       local.get $0
       i32.const 32
       i32.add
       local.set $0
      end
      br $continue|0
     end
    end
   end
  end
 )
 (func $~lib/util/runtime/register (; 6 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  global.get $~lib/memory/HEAP_BASE
  i32.gt_u
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 131
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  global.get $~lib/util/runtime/HEADER_SIZE
  i32.sub
  local.set $2
  local.get $2
  i32.load
  global.get $~lib/util/runtime/HEADER_MAGIC
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 133
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.store
  local.get $0
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 7 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  global.get $~lib/util/runtime/MAX_BYTELENGTH
  i32.gt_u
  if
   i32.const 0
   i32.const 16
   i32.const 54
   i32.const 43
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/util/runtime/allocate
  local.set $2
  local.get $2
  i32.const 0
  local.get $1
  call $~lib/memory/memory.fill
  local.get $2
  i32.const 15
  call $~lib/util/runtime/register
 )
 (func $~lib/arraybuffer/ArrayBuffer#get:byteLength (; 8 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  global.get $~lib/util/runtime/HEADER_SIZE
  i32.sub
  i32.load offset=4
 )
 (func $~lib/memory/memory.copy (; 9 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.get $1
   i32.eq
   if
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     block $break|0
      loop $continue|0
       local.get $0
       i32.const 7
       i32.and
       if
        block
         local.get $2
         i32.eqz
         if
          br $~lib/util/memory/memmove|inlined.0
         end
         local.get $2
         i32.const 1
         i32.sub
         local.set $2
         block (result i32)
          local.get $0
          local.tee $5
          i32.const 1
          i32.add
          local.set $0
          local.get $5
         end
         block (result i32)
          local.get $1
          local.tee $5
          i32.const 1
          i32.add
          local.set $1
          local.get $5
         end
         i32.load8_u
         i32.store8
        end
        br $continue|0
       end
      end
     end
     block $break|1
      loop $continue|1
       local.get $2
       i32.const 8
       i32.ge_u
       if
        block
         local.get $0
         local.get $1
         i64.load
         i64.store
         local.get $2
         i32.const 8
         i32.sub
         local.set $2
         local.get $0
         i32.const 8
         i32.add
         local.set $0
         local.get $1
         i32.const 8
         i32.add
         local.set $1
        end
        br $continue|1
       end
      end
     end
    end
    block $break|2
     loop $continue|2
      local.get $2
      if
       block
        block (result i32)
         local.get $0
         local.tee $5
         i32.const 1
         i32.add
         local.set $0
         local.get $5
        end
        block (result i32)
         local.get $1
         local.tee $5
         i32.const 1
         i32.add
         local.set $1
         local.get $5
        end
        i32.load8_u
        i32.store8
        local.get $2
        i32.const 1
        i32.sub
        local.set $2
       end
       br $continue|2
      end
     end
    end
   else    
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     block $break|3
      loop $continue|3
       local.get $0
       local.get $2
       i32.add
       i32.const 7
       i32.and
       if
        block
         local.get $2
         i32.eqz
         if
          br $~lib/util/memory/memmove|inlined.0
         end
         local.get $0
         local.get $2
         i32.const 1
         i32.sub
         local.tee $2
         i32.add
         local.get $1
         local.get $2
         i32.add
         i32.load8_u
         i32.store8
        end
        br $continue|3
       end
      end
     end
     block $break|4
      loop $continue|4
       local.get $2
       i32.const 8
       i32.ge_u
       if
        block
         local.get $2
         i32.const 8
         i32.sub
         local.set $2
         local.get $0
         local.get $2
         i32.add
         local.get $1
         local.get $2
         i32.add
         i64.load
         i64.store
        end
        br $continue|4
       end
      end
     end
    end
    block $break|5
     loop $continue|5
      local.get $2
      if
       local.get $0
       local.get $2
       i32.const 1
       i32.sub
       local.tee $2
       i32.add
       local.get $1
       local.get $2
       i32.add
       i32.load8_u
       i32.store8
       br $continue|5
      end
     end
    end
   end
  end
 )
 (func $~lib/arraybuffer/ArrayBuffer#slice (; 10 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $3
   local.get $1
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
  else   
   local.get $1
   local.tee $4
   local.get $3
   local.tee $5
   local.get $4
   local.get $5
   i32.lt_s
   select
  end
  local.set $1
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $3
   local.get $2
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
  else   
   local.get $2
   local.tee $4
   local.get $3
   local.tee $5
   local.get $4
   local.get $5
   i32.lt_s
   select
  end
  local.set $2
  local.get $2
  local.get $1
  i32.sub
  local.tee $4
  i32.const 0
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  local.set $6
  local.get $6
  call $~lib/util/runtime/allocate
  local.set $7
  local.get $7
  local.get $0
  local.get $1
  i32.add
  local.get $6
  call $~lib/memory/memory.copy
  local.get $7
  i32.const 15
  call $~lib/util/runtime/register
 )
 (func $~lib/arraybuffer/ArrayBuffer.isView<~lib/array/Array<i32>> (; 11 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  if
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
  end
  i32.const 0
 )
 (func $~lib/arraybuffer/ArrayBuffer.isView<usize> (; 12 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  if
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
  end
  i32.const 0
 )
 (func $~lib/arraybuffer/ArrayBuffer.isView<~lib/typedarray/Uint8Array> (; 13 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  if
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 1
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
  end
  i32.const 0
 )
 (func $~lib/arraybuffer/ArrayBuffer.isView<~lib/typedarray/Int32Array> (; 14 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  if
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 1
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
  end
  i32.const 0
 )
 (func $~lib/arraybuffer/ArrayBuffer.isView<~lib/dataview/DataView> (; 15 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  if
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 0
   end
   if
    i32.const 1
    return
   end
   block (result i32)
    local.get $0
    drop
    i32.const 1
   end
   if
    i32.const 1
    return
   end
  end
  i32.const 0
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 16 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $1
  global.get $~lib/util/runtime/MAX_BYTELENGTH
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   i32.const 0
   i32.const 16
   i32.const 12
   i32.const 57
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.get $1
  local.get $2
  i32.shl
  local.tee $1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 12
    call $~lib/util/runtime/allocate
    i32.const 14
    call $~lib/util/runtime/register
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $0
  end
  local.get $3
  i32.store
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Uint8Array#constructor (; 17 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 12
   call $~lib/util/runtime/allocate
   i32.const 19
   call $~lib/util/runtime/register
  end
  local.get $1
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/util/runtime/makeArray (; 18 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 16
  call $~lib/util/runtime/allocate
  local.get $2
  call $~lib/util/runtime/register
  local.set $4
  local.get $0
  local.get $1
  i32.shl
  local.set $5
  local.get $5
  call $~lib/util/runtime/allocate
  i32.const 15
  call $~lib/util/runtime/register
  local.set $6
  local.get $4
  local.get $6
  i32.store
  local.get $4
  local.get $6
  i32.store offset=4
  local.get $4
  local.get $5
  i32.store offset=8
  local.get $4
  local.get $0
  i32.store offset=12
  local.get $3
  if
   local.get $6
   local.get $3
   local.get $5
   call $~lib/memory/memory.copy
  end
  local.get $4
 )
 (func $~lib/typedarray/Int32Array#constructor (; 19 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 12
   call $~lib/util/runtime/allocate
   i32.const 23
   call $~lib/util/runtime/register
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/dataview/DataView#constructor (; 20 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  global.get $~lib/util/runtime/MAX_BYTELENGTH
  i32.gt_u
  local.get $2
  local.get $3
  i32.add
  local.get $1
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.gt_u
  i32.or
  if
   i32.const 0
   i32.const 176
   i32.const 21
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 12
    call $~lib/util/runtime/allocate
    i32.const 29
    call $~lib/util/runtime/register
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $0
  end
  local.get $1
  i32.store
  local.get $1
  local.get $2
  i32.add
  local.set $4
  local.get $0
  local.get $4
  i32.store offset=4
  local.get $0
  local.get $3
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Uint8Array#get:buffer (; 21 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $~lib/dataview/DataView#constructor|trampoline (; 22 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~lib/argc
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 0
    local.set $2
   end
   local.get $1
   call $~lib/arraybuffer/ArrayBuffer#get:byteLength
   local.set $3
  end
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $~lib/dataview/DataView#constructor
 )
 (func $start:std/arraybuffer (; 23 ;) (type $FUNCSIG$v)
  global.get $~lib/memory/HEAP_BASE
  i32.const 7
  i32.add
  i32.const 7
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  i32.const 0
  i32.const 8
  call $~lib/arraybuffer/ArrayBuffer#constructor
  global.set $std/arraybuffer/buffer
  global.get $std/arraybuffer/buffer
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 3
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/arraybuffer/buffer
  i32.const 0
  global.get $~lib/util/runtime/MAX_BYTELENGTH
  call $~lib/arraybuffer/ArrayBuffer#slice
  global.set $std/arraybuffer/sliced
  global.get $std/arraybuffer/sliced
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 7
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/arraybuffer/sliced
  global.get $std/arraybuffer/buffer
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 8
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/arraybuffer/buffer
  i32.const 1
  global.get $~lib/util/runtime/MAX_BYTELENGTH
  call $~lib/arraybuffer/ArrayBuffer#slice
  global.set $std/arraybuffer/sliced
  global.get $std/arraybuffer/sliced
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.const 7
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 12
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/arraybuffer/buffer
  i32.const -1
  global.get $~lib/util/runtime/MAX_BYTELENGTH
  call $~lib/arraybuffer/ArrayBuffer#slice
  global.set $std/arraybuffer/sliced
  global.get $std/arraybuffer/sliced
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 16
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/arraybuffer/buffer
  i32.const 1
  i32.const 3
  call $~lib/arraybuffer/ArrayBuffer#slice
  global.set $std/arraybuffer/sliced
  global.get $std/arraybuffer/sliced
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 20
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/arraybuffer/buffer
  i32.const 1
  i32.const -1
  call $~lib/arraybuffer/ArrayBuffer#slice
  global.set $std/arraybuffer/sliced
  global.get $std/arraybuffer/sliced
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 24
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/arraybuffer/buffer
  i32.const -3
  i32.const -1
  call $~lib/arraybuffer/ArrayBuffer#slice
  global.set $std/arraybuffer/sliced
  global.get $std/arraybuffer/sliced
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 28
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/arraybuffer/buffer
  i32.const -4
  i32.const 42
  call $~lib/arraybuffer/ArrayBuffer#slice
  global.set $std/arraybuffer/sliced
  global.get $std/arraybuffer/sliced
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 32
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/arraybuffer/buffer
  i32.const 42
  global.get $~lib/util/runtime/MAX_BYTELENGTH
  call $~lib/arraybuffer/ArrayBuffer#slice
  global.set $std/arraybuffer/sliced
  global.get $std/arraybuffer/sliced
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 36
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/arraybuffer/sliced
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 37
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer.isView<~lib/array/Array<i32>>
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 39
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer.isView<usize>
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 40
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer.isView<~lib/typedarray/Uint8Array>
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 41
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer.isView<~lib/typedarray/Int32Array>
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 42
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer.isView<~lib/dataview/DataView>
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 43
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8Array#constructor
  global.set $std/arraybuffer/arr8
  i32.const 2
  i32.const 2
  i32.const 17
  i32.const 160
  call $~lib/util/runtime/makeArray
  call $~lib/arraybuffer/ArrayBuffer.isView<~lib/array/Array<i32>>
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 46
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/arraybuffer/arr8
  call $~lib/arraybuffer/ArrayBuffer.isView<~lib/typedarray/Uint8Array>
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 47
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int32Array#constructor
  call $~lib/arraybuffer/ArrayBuffer.isView<~lib/typedarray/Int32Array>
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 48
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  block (result i32)
   i32.const 1
   global.set $~lib/argc
   i32.const 0
   global.get $std/arraybuffer/arr8
   call $~lib/typedarray/Uint8Array#get:buffer
   i32.const 0
   i32.const 0
   call $~lib/dataview/DataView#constructor|trampoline
  end
  call $~lib/arraybuffer/ArrayBuffer.isView<~lib/dataview/DataView>
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 49
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/runtime/runtime.instanceof (; 24 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  global.get $~lib/util/runtime/HEADER_SIZE
  i32.sub
  i32.load
  local.set $2
  global.get $~lib/runtime/RTTI_BASE
  local.set $3
  local.get $2
  if (result i32)
   local.get $2
   local.get $3
   i32.load
   i32.le_u
  else   
   local.get $2
  end
  if
   loop $continue|0
    local.get $2
    local.get $1
    i32.eq
    if
     i32.const 1
     return
    end
    local.get $3
    local.get $2
    i32.const 8
    i32.mul
    i32.add
    i32.load offset=4
    local.tee $2
    br_if $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/runtime/runtime.flags (; 25 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/runtime/RTTI_BASE
  local.set $1
  local.get $0
  i32.eqz
  local.tee $2
  if (result i32)
   local.get $2
  else   
   local.get $0
   local.get $1
   i32.load
   i32.gt_u
  end
  if (result i32)
   unreachable
  else   
   local.get $1
   local.get $0
   i32.const 8
   i32.mul
   i32.add
   i32.load
  end
 )
 (func $~lib/runtime/runtime.newObject (; 26 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  call $~lib/util/runtime/allocate
  local.get $1
  call $~lib/util/runtime/register
 )
 (func $~lib/runtime/runtime.newString (; 27 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 1
  i32.shl
  i32.const 16
  call $~lib/runtime/runtime.newObject
 )
 (func $~lib/runtime/runtime.newArrayBuffer (; 28 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 15
  call $~lib/runtime/runtime.newObject
 )
 (func $~lib/runtime/runtime.newArray (; 29 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/runtime/runtime.flags
  local.set $2
  local.get $2
  i32.const 8
  i32.div_u
  i32.const 31
  i32.and
  local.set $3
  local.get $1
  i32.eqz
  if
   i32.const 0
   local.tee $4
   call $~lib/runtime/runtime.newArrayBuffer
   local.set $1
  else   
   local.get $1
   call $~lib/arraybuffer/ArrayBuffer#get:byteLength
   local.set $4
  end
  local.get $0
  i32.const 16
  call $~lib/runtime/runtime.newObject
  local.set $5
  local.get $5
  local.get $1
  i32.store
  local.get $5
  local.get $1
  i32.store offset=4
  local.get $5
  local.get $4
  i32.store offset=8
  local.get $5
  local.get $4
  local.get $3
  i32.shr_u
  i32.store offset=12
  local.get $2
  i32.const 512
  i32.and
  if
   local.get $1
   local.set $6
   local.get $6
   local.get $4
   i32.add
   local.set $7
   block $break|0
    loop $continue|0
     local.get $6
     local.get $7
     i32.lt_u
     if
      block
       local.get $6
       i32.load
       local.set $8
       local.get $8
       if
        i32.const 0
        i32.eqz
        if
         i32.const 0
         i32.const 216
         i32.const 97
         i32.const 15
         call $~lib/builtins/abort
         unreachable
        end
       end
       local.get $6
       i32.const 4
       i32.add
       local.set $6
      end
      br $continue|0
     end
    end
   end
  end
  local.get $5
 )
 (func $~lib/runtime/runtime.retain (; 30 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/runtime/runtime.release (; 31 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/runtime/runtime.collect (; 32 ;) (type $FUNCSIG$v)
  i32.const 0
  i32.const 216
  i32.const 139
  i32.const 9
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/runtime/runtime#constructor (; 33 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  unreachable
 )
 (func $start (; 34 ;) (type $FUNCSIG$v)
  call $start:std/arraybuffer
 )
 (func $null (; 35 ;) (type $FUNCSIG$v)
 )
)
