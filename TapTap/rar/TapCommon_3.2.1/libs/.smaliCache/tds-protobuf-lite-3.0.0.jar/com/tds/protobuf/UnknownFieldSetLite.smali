.class public final Lcom/tds/protobuf/UnknownFieldSetLite;
.super Ljava/lang/Object;
.source "UnknownFieldSetLite.java"


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/tds/protobuf/UnknownFieldSetLite;

.field private static final MIN_CAPACITY:I = 0x8


# instance fields
.field private count:I

.field private isMutable:Z

.field private memoizedSerializedSize:I

.field private objects:[Ljava/lang/Object;

.field private tags:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 53
    new-instance v0, Lcom/tds/protobuf/UnknownFieldSetLite;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/tds/protobuf/UnknownFieldSetLite;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lcom/tds/protobuf/UnknownFieldSetLite;->DEFAULT_INSTANCE:Lcom/tds/protobuf/UnknownFieldSetLite;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .line 114
    const/16 v0, 0x8

    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/tds/protobuf/UnknownFieldSetLite;-><init>(I[I[Ljava/lang/Object;Z)V

    .line 115
    return-void
.end method

.method private constructor <init>(I[I[Ljava/lang/Object;Z)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "tags"    # [I
    .param p3, "objects"    # [Ljava/lang/Object;
    .param p4, "isMutable"    # Z

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    .line 121
    iput p1, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->count:I

    .line 122
    iput-object p2, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->tags:[I

    .line 123
    iput-object p3, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    .line 124
    iput-boolean p4, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->isMutable:Z

    .line 125
    return-void
.end method

.method private ensureCapacity()V
    .registers 4

    .line 283
    iget v0, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->count:I

    iget-object v1, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->tags:[I

    array-length v2, v1

    if-ne v0, v2, :cond_1e

    .line 284
    const/4 v2, 0x4

    if-ge v0, v2, :cond_d

    const/16 v2, 0x8

    goto :goto_f

    :cond_d
    shr-int/lit8 v2, v0, 0x1

    .line 285
    .local v2, "increment":I
    :goto_f
    add-int/2addr v0, v2

    .line 287
    .local v0, "newLength":I
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->tags:[I

    .line 288
    iget-object v1, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    .line 290
    .end local v0    # "newLength":I
    .end local v2    # "increment":I
    :cond_1e
    return-void
.end method

.method public static getDefaultInstance()Lcom/tds/protobuf/UnknownFieldSetLite;
    .registers 1

    .line 62
    sget-object v0, Lcom/tds/protobuf/UnknownFieldSetLite;->DEFAULT_INSTANCE:Lcom/tds/protobuf/UnknownFieldSetLite;

    return-object v0
.end method

.method private mergeFrom(Lcom/tds/protobuf/CodedInputStream;)Lcom/tds/protobuf/UnknownFieldSetLite;
    .registers 4
    .param p1, "input"    # Lcom/tds/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 371
    :goto_0
    invoke-virtual {p1}, Lcom/tds/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 372
    .local v0, "tag":I
    if-eqz v0, :cond_e

    invoke-virtual {p0, v0, p1}, Lcom/tds/protobuf/UnknownFieldSetLite;->mergeFieldFrom(ILcom/tds/protobuf/CodedInputStream;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 373
    goto :goto_e

    .line 375
    .end local v0    # "tag":I
    :cond_d
    goto :goto_0

    .line 376
    :cond_e
    :goto_e
    return-object p0
.end method

.method static mutableCopyOf(Lcom/tds/protobuf/UnknownFieldSetLite;Lcom/tds/protobuf/UnknownFieldSetLite;)Lcom/tds/protobuf/UnknownFieldSetLite;
    .registers 9
    .param p0, "first"    # Lcom/tds/protobuf/UnknownFieldSetLite;
    .param p1, "second"    # Lcom/tds/protobuf/UnknownFieldSetLite;

    .line 77
    iget v0, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->count:I

    iget v1, p1, Lcom/tds/protobuf/UnknownFieldSetLite;->count:I

    add-int/2addr v0, v1

    .line 78
    .local v0, "count":I
    iget-object v1, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->tags:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 79
    .local v1, "tags":[I
    iget-object v2, p1, Lcom/tds/protobuf/UnknownFieldSetLite;->tags:[I

    iget v3, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->count:I

    iget v4, p1, Lcom/tds/protobuf/UnknownFieldSetLite;->count:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    iget-object v2, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 81
    .local v2, "objects":[Ljava/lang/Object;
    iget-object v3, p1, Lcom/tds/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget v4, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->count:I

    iget v6, p1, Lcom/tds/protobuf/UnknownFieldSetLite;->count:I

    invoke-static {v3, v5, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    new-instance v3, Lcom/tds/protobuf/UnknownFieldSetLite;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/tds/protobuf/UnknownFieldSetLite;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object v3
.end method

.method static newInstance()Lcom/tds/protobuf/UnknownFieldSetLite;
    .registers 1

    .line 69
    new-instance v0, Lcom/tds/protobuf/UnknownFieldSetLite;

    invoke-direct {v0}, Lcom/tds/protobuf/UnknownFieldSetLite;-><init>()V

    return-object v0
.end method

.method private storeField(ILjava/lang/Object;)V
    .registers 5
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 272
    invoke-direct {p0}, Lcom/tds/protobuf/UnknownFieldSetLite;->ensureCapacity()V

    .line 274
    iget-object v0, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->tags:[I

    iget v1, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->count:I

    aput p1, v0, v1

    .line 275
    iget-object v0, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aput-object p2, v0, v1

    .line 276
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->count:I

    .line 277
    return-void
.end method


# virtual methods
.method checkMutable()V
    .registers 2

    .line 140
    iget-boolean v0, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->isMutable:Z

    if-eqz v0, :cond_5

    .line 143
    return-void

    .line 141
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 222
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 223
    return v0

    .line 226
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 227
    return v1

    .line 230
    :cond_8
    instance-of v2, p1, Lcom/tds/protobuf/UnknownFieldSetLite;

    if-nez v2, :cond_d

    .line 231
    return v1

    .line 234
    :cond_d
    move-object v2, p1

    check-cast v2, Lcom/tds/protobuf/UnknownFieldSetLite;

    .line 235
    .local v2, "other":Lcom/tds/protobuf/UnknownFieldSetLite;
    iget v3, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->count:I

    iget v4, v2, Lcom/tds/protobuf/UnknownFieldSetLite;->count:I

    if-ne v3, v4, :cond_2c

    iget-object v3, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->tags:[I

    iget-object v4, v2, Lcom/tds/protobuf/UnknownFieldSetLite;->tags:[I

    .line 237
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget-object v4, v2, Lcom/tds/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    .line 238
    invoke-static {v3, v4}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    goto :goto_2c

    .line 242
    :cond_2b
    return v0

    .line 239
    :cond_2c
    :goto_2c
    return v1
.end method

.method public getSerializedSize()I
    .registers 7

    .line 184
    iget v0, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    .line 185
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 186
    return v0

    .line 189
    :cond_6
    const/4 v0, 0x0

    .line 190
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    iget v2, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->count:I

    if-ge v1, v2, :cond_77

    .line 191
    iget-object v2, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->tags:[I

    aget v2, v2, v1

    .line 192
    .local v2, "tag":I
    invoke-static {v2}, Lcom/tds/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v3

    .line 193
    .local v3, "fieldNumber":I
    invoke-static {v2}, Lcom/tds/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_7a

    .line 211
    :pswitch_1b
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/tds/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/tds/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 198
    :pswitch_25
    iget-object v4, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v4, v4, v1

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/tds/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 199
    goto :goto_74

    .line 207
    :pswitch_35
    invoke-static {v3}, Lcom/tds/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v5, v5, v1

    check-cast v5, Lcom/tds/protobuf/UnknownFieldSetLite;

    .line 208
    invoke-virtual {v5}, Lcom/tds/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 209
    goto :goto_74

    .line 204
    :pswitch_48
    iget-object v4, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v4, v4, v1

    check-cast v4, Lcom/tds/protobuf/ByteString;

    invoke-static {v3, v4}, Lcom/tds/protobuf/CodedOutputStream;->computeBytesSize(ILcom/tds/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 205
    goto :goto_74

    .line 201
    :pswitch_54
    iget-object v4, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v4, v4, v1

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/tds/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v4

    add-int/2addr v0, v4

    .line 202
    goto :goto_74

    .line 195
    :pswitch_64
    iget-object v4, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v4, v4, v1

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/tds/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v0, v4

    .line 196
    nop

    .line 190
    .end local v2    # "tag":I
    .end local v3    # "fieldNumber":I
    :goto_74
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 215
    .end local v1    # "i":I
    :cond_77
    iput v0, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    .line 217
    return v0

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_64
        :pswitch_54
        :pswitch_48
        :pswitch_35
        :pswitch_1b
        :pswitch_25
    .end packed-switch
.end method

.method public hashCode()I
    .registers 4

    .line 247
    const/16 v0, 0x11

    .line 249
    .local v0, "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->count:I

    add-int/2addr v1, v2

    .line 250
    .end local v0    # "hashCode":I
    .local v1, "hashCode":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->tags:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v0, v2

    .line 251
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 253
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    return v1
.end method

.method public makeImmutable()V
    .registers 2

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->isMutable:Z

    .line 134
    return-void
.end method

.method mergeFieldFrom(ILcom/tds/protobuf/CodedInputStream;)Z
    .registers 8
    .param p1, "tag"    # I
    .param p2, "input"    # Lcom/tds/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    invoke-virtual {p0}, Lcom/tds/protobuf/UnknownFieldSetLite;->checkMutable()V

    .line 302
    invoke-static {p1}, Lcom/tds/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    .line 303
    .local v0, "fieldNumber":I
    invoke-static {p1}, Lcom/tds/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_56

    .line 326
    invoke-static {}, Lcom/tds/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/tds/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 308
    :pswitch_14
    invoke-virtual {p2}, Lcom/tds/protobuf/CodedInputStream;->readFixed32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/tds/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 309
    return v2

    .line 324
    :pswitch_20
    const/4 v1, 0x0

    return v1

    .line 317
    :pswitch_22
    new-instance v1, Lcom/tds/protobuf/UnknownFieldSetLite;

    invoke-direct {v1}, Lcom/tds/protobuf/UnknownFieldSetLite;-><init>()V

    .line 318
    .local v1, "subFieldSet":Lcom/tds/protobuf/UnknownFieldSetLite;
    invoke-direct {v1, p2}, Lcom/tds/protobuf/UnknownFieldSetLite;->mergeFrom(Lcom/tds/protobuf/CodedInputStream;)Lcom/tds/protobuf/UnknownFieldSetLite;

    .line 319
    const/4 v3, 0x4

    .line 320
    invoke-static {v0, v3}, Lcom/tds/protobuf/WireFormat;->makeTag(II)I

    move-result v3

    .line 319
    invoke-virtual {p2, v3}, Lcom/tds/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 321
    invoke-direct {p0, p1, v1}, Lcom/tds/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 322
    return v2

    .line 314
    .end local v1    # "subFieldSet":Lcom/tds/protobuf/UnknownFieldSetLite;
    :pswitch_36
    invoke-virtual {p2}, Lcom/tds/protobuf/CodedInputStream;->readBytes()Lcom/tds/protobuf/ByteString;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/tds/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 315
    return v2

    .line 311
    :pswitch_3e
    invoke-virtual {p2}, Lcom/tds/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/tds/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 312
    return v2

    .line 305
    :pswitch_4a
    invoke-virtual {p2}, Lcom/tds/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/tds/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 306
    return v2

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_3e
        :pswitch_36
        :pswitch_22
        :pswitch_20
        :pswitch_14
    .end packed-switch
.end method

.method mergeLengthDelimitedField(ILcom/tds/protobuf/ByteString;)Lcom/tds/protobuf/UnknownFieldSetLite;
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/tds/protobuf/ByteString;

    .line 354
    invoke-virtual {p0}, Lcom/tds/protobuf/UnknownFieldSetLite;->checkMutable()V

    .line 355
    if-eqz p1, :cond_e

    .line 359
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/tds/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/tds/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 361
    return-object p0

    .line 356
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zero is not a valid field number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method mergeVarintField(II)Lcom/tds/protobuf/UnknownFieldSetLite;
    .registers 6
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I

    .line 338
    invoke-virtual {p0}, Lcom/tds/protobuf/UnknownFieldSetLite;->checkMutable()V

    .line 339
    if-eqz p1, :cond_13

    .line 343
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tds/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    int-to-long v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tds/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 345
    return-object p0

    .line 340
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zero is not a valid field number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final printWithIndent(Ljava/lang/StringBuilder;I)V
    .registers 7
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .param p2, "indent"    # I

    .line 265
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->count:I

    if-ge v0, v1, :cond_1b

    .line 266
    iget-object v1, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/tds/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    .line 267
    .local v1, "fieldNumber":I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-static {p1, p2, v2, v3}, Lcom/tds/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 265
    .end local v1    # "fieldNumber":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 269
    .end local v0    # "i":I
    :cond_1b
    return-void
.end method

.method public writeTo(Lcom/tds/protobuf/CodedOutputStream;)V
    .registers 7
    .param p1, "output"    # Lcom/tds/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->count:I

    if-ge v0, v1, :cond_62

    .line 152
    iget-object v1, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    .line 153
    .local v1, "tag":I
    invoke-static {v1}, Lcom/tds/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v2

    .line 154
    .local v2, "fieldNumber":I
    invoke-static {v1}, Lcom/tds/protobuf/WireFormat;->getTagWireType(I)I

    move-result v3

    packed-switch v3, :pswitch_data_64

    .line 173
    :pswitch_14
    invoke-static {}, Lcom/tds/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/tds/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    .line 159
    :pswitch_19
    iget-object v3, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/tds/protobuf/CodedOutputStream;->writeFixed32(II)V

    .line 160
    goto :goto_5f

    .line 168
    :pswitch_27
    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Lcom/tds/protobuf/CodedOutputStream;->writeTag(II)V

    .line 169
    iget-object v3, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/tds/protobuf/UnknownFieldSetLite;

    invoke-virtual {v3, p1}, Lcom/tds/protobuf/UnknownFieldSetLite;->writeTo(Lcom/tds/protobuf/CodedOutputStream;)V

    .line 170
    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Lcom/tds/protobuf/CodedOutputStream;->writeTag(II)V

    .line 171
    goto :goto_5f

    .line 165
    :pswitch_39
    iget-object v3, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/tds/protobuf/ByteString;

    invoke-virtual {p1, v2, v3}, Lcom/tds/protobuf/CodedOutputStream;->writeBytes(ILcom/tds/protobuf/ByteString;)V

    .line 166
    goto :goto_5f

    .line 162
    :pswitch_43
    iget-object v3, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/tds/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    .line 163
    goto :goto_5f

    .line 156
    :pswitch_51
    iget-object v3, p0, Lcom/tds/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/tds/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 157
    nop

    .line 151
    .end local v1    # "tag":I
    .end local v2    # "fieldNumber":I
    :goto_5f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 176
    .end local v0    # "i":I
    :cond_62
    return-void

    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_51
        :pswitch_43
        :pswitch_39
        :pswitch_27
        :pswitch_14
        :pswitch_19
    .end packed-switch
.end method
