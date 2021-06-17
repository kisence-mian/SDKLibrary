.class final Landroidx/core/content/res/GrowingArrayUtils;
.super Ljava/lang/Object;
.source "GrowingArrayUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 29
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append([III)[I
    .registers 5
    .param p0, "array"    # [I
    .param p1, "currentSize"    # I
    .param p2, "element"    # I

    .line 57
    nop

    .line 59
    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-le v0, v1, :cond_11

    .line 60
    invoke-static {p1}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v0

    new-array v0, v0, [I

    .line 61
    .local v0, "newArray":[I
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    move-object p0, v0

    .line 64
    .end local v0    # "newArray":[I
    :cond_11
    aput p2, p0, p1

    .line 65
    return-object p0
.end method

.method public static append([JIJ)[J
    .registers 6
    .param p0, "array"    # [J
    .param p1, "currentSize"    # I
    .param p2, "element"    # J

    .line 72
    nop

    .line 74
    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-le v0, v1, :cond_11

    .line 75
    invoke-static {p1}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v0

    new-array v0, v0, [J

    .line 76
    .local v0, "newArray":[J
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    move-object p0, v0

    .line 79
    .end local v0    # "newArray":[J
    :cond_11
    aput-wide p2, p0, p1

    .line 80
    return-object p0
.end method

.method public static append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .param p1, "currentSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    .line 41
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    nop

    .line 43
    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-le v0, v1, :cond_1f

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 45
    invoke-static {p1}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v1

    .line 44
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 46
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    move-object p0, v0

    .line 49
    .end local v0    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_1f
    aput-object p2, p0, p1

    .line 50
    return-object p0
.end method

.method public static append([ZIZ)[Z
    .registers 5
    .param p0, "array"    # [Z
    .param p1, "currentSize"    # I
    .param p2, "element"    # Z

    .line 87
    nop

    .line 89
    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-le v0, v1, :cond_11

    .line 90
    invoke-static {p1}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v0

    new-array v0, v0, [Z

    .line 91
    .local v0, "newArray":[Z
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    move-object p0, v0

    .line 94
    .end local v0    # "newArray":[Z
    :cond_11
    aput-boolean p2, p0, p1

    .line 95
    return-object p0
.end method

.method public static growSize(I)I
    .registers 2
    .param p0, "currentSize"    # I

    .line 189
    const/4 v0, 0x4

    if-gt p0, v0, :cond_6

    const/16 v0, 0x8

    goto :goto_8

    :cond_6
    mul-int/lit8 v0, p0, 0x2

    :goto_8
    return v0
.end method

.method public static insert([IIII)[I
    .registers 7
    .param p0, "array"    # [I
    .param p1, "currentSize"    # I
    .param p2, "index"    # I
    .param p3, "element"    # I

    .line 130
    nop

    .line 132
    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-gt v0, v1, :cond_10

    .line 133
    add-int/lit8 v0, p2, 0x1

    sub-int v1, p1, p2

    invoke-static {p0, p2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    aput p3, p0, p2

    .line 135
    return-object p0

    .line 138
    :cond_10
    invoke-static {p1}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v0

    new-array v0, v0, [I

    .line 139
    .local v0, "newArray":[I
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    aput p3, v0, p2

    .line 141
    add-int/lit8 v1, p2, 0x1

    array-length v2, p0

    sub-int/2addr v2, p2

    invoke-static {p0, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    return-object v0
.end method

.method public static insert([JIIJ)[J
    .registers 8
    .param p0, "array"    # [J
    .param p1, "currentSize"    # I
    .param p2, "index"    # I
    .param p3, "element"    # J

    .line 149
    nop

    .line 151
    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-gt v0, v1, :cond_10

    .line 152
    add-int/lit8 v0, p2, 0x1

    sub-int v1, p1, p2

    invoke-static {p0, p2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    aput-wide p3, p0, p2

    .line 154
    return-object p0

    .line 157
    :cond_10
    invoke-static {p1}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v0

    new-array v0, v0, [J

    .line 158
    .local v0, "newArray":[J
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    aput-wide p3, v0, p2

    .line 160
    add-int/lit8 v1, p2, 0x1

    array-length v2, p0

    sub-int/2addr v2, p2

    invoke-static {p0, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    return-object v0
.end method

.method public static insert([Ljava/lang/Object;IILjava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .param p1, "currentSize"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IITT;)[TT;"
        }
    .end annotation

    .line 110
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p3, "element":Ljava/lang/Object;, "TT;"
    nop

    .line 112
    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-gt v0, v1, :cond_10

    .line 113
    add-int/lit8 v0, p2, 0x1

    sub-int v1, p1, p2

    invoke-static {p0, p2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    aput-object p3, p0, p2

    .line 115
    return-object p0

    .line 118
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 119
    invoke-static {p1}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v1

    .line 118
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 120
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    aput-object p3, v0, p2

    .line 122
    add-int/lit8 v1, p2, 0x1

    array-length v2, p0

    sub-int/2addr v2, p2

    invoke-static {p0, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    return-object v0
.end method

.method public static insert([ZIIZ)[Z
    .registers 7
    .param p0, "array"    # [Z
    .param p1, "currentSize"    # I
    .param p2, "index"    # I
    .param p3, "element"    # Z

    .line 168
    nop

    .line 170
    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-gt v0, v1, :cond_10

    .line 171
    add-int/lit8 v0, p2, 0x1

    sub-int v1, p1, p2

    invoke-static {p0, p2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    aput-boolean p3, p0, p2

    .line 173
    return-object p0

    .line 176
    :cond_10
    invoke-static {p1}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v0

    new-array v0, v0, [Z

    .line 177
    .local v0, "newArray":[Z
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    aput-boolean p3, v0, p2

    .line 179
    add-int/lit8 v1, p2, 0x1

    array-length v2, p0

    sub-int/2addr v2, p2

    invoke-static {p0, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    return-object v0
.end method
