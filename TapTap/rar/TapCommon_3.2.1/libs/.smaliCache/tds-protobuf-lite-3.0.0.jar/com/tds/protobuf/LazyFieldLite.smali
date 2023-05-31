.class public Lcom/tds/protobuf/LazyFieldLite;
.super Ljava/lang/Object;
.source "LazyFieldLite.java"


# static fields
.field private static final EMPTY_REGISTRY:Lcom/tds/protobuf/ExtensionRegistryLite;


# instance fields
.field private delayedBytes:Lcom/tds/protobuf/ByteString;

.field private extensionRegistry:Lcom/tds/protobuf/ExtensionRegistryLite;

.field private volatile memoizedBytes:Lcom/tds/protobuf/ByteString;

.field protected volatile value:Lcom/tds/protobuf/MessageLite;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    invoke-static {}, Lcom/tds/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/tds/protobuf/ExtensionRegistryLite;

    move-result-object v0

    sput-object v0, Lcom/tds/protobuf/LazyFieldLite;->EMPTY_REGISTRY:Lcom/tds/protobuf/ExtensionRegistryLite;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    return-void
.end method

.method public constructor <init>(Lcom/tds/protobuf/ExtensionRegistryLite;Lcom/tds/protobuf/ByteString;)V
    .registers 3
    .param p1, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .param p2, "bytes"    # Lcom/tds/protobuf/ByteString;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-static {p1, p2}, Lcom/tds/protobuf/LazyFieldLite;->checkArguments(Lcom/tds/protobuf/ExtensionRegistryLite;Lcom/tds/protobuf/ByteString;)V

    .line 118
    iput-object p1, p0, Lcom/tds/protobuf/LazyFieldLite;->extensionRegistry:Lcom/tds/protobuf/ExtensionRegistryLite;

    .line 119
    iput-object p2, p0, Lcom/tds/protobuf/LazyFieldLite;->delayedBytes:Lcom/tds/protobuf/ByteString;

    .line 120
    return-void
.end method

.method private static checkArguments(Lcom/tds/protobuf/ExtensionRegistryLite;Lcom/tds/protobuf/ByteString;)V
    .registers 4
    .param p0, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .param p1, "bytes"    # Lcom/tds/protobuf/ByteString;

    .line 451
    if-eqz p0, :cond_d

    .line 454
    if-eqz p1, :cond_5

    .line 457
    return-void

    .line 455
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "found null ByteString"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "found null ExtensionRegistry"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromValue(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/LazyFieldLite;
    .registers 2
    .param p0, "value"    # Lcom/tds/protobuf/MessageLite;

    .line 133
    new-instance v0, Lcom/tds/protobuf/LazyFieldLite;

    invoke-direct {v0}, Lcom/tds/protobuf/LazyFieldLite;-><init>()V

    .line 134
    .local v0, "lf":Lcom/tds/protobuf/LazyFieldLite;
    invoke-virtual {v0, p0}, Lcom/tds/protobuf/LazyFieldLite;->setValue(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/MessageLite;

    .line 135
    return-object v0
.end method

.method private static mergeValueAndBytes(Lcom/tds/protobuf/MessageLite;Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;
    .registers 4
    .param p0, "value"    # Lcom/tds/protobuf/MessageLite;
    .param p1, "otherBytes"    # Lcom/tds/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;

    .line 355
    :try_start_0
    invoke-interface {p0}, Lcom/tds/protobuf/MessageLite;->toBuilder()Lcom/tds/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/tds/protobuf/MessageLite$Builder;->mergeFrom(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/tds/protobuf/MessageLite$Builder;->build()Lcom/tds/protobuf/MessageLite;

    move-result-object v0
    :try_end_c
    .catch Lcom/tds/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 356
    :catch_d
    move-exception v0

    .line 359
    .local v0, "e":Lcom/tds/protobuf/InvalidProtocolBufferException;
    return-object p0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->delayedBytes:Lcom/tds/protobuf/ByteString;

    .line 194
    iput-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->value:Lcom/tds/protobuf/MessageLite;

    .line 195
    iput-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->memoizedBytes:Lcom/tds/protobuf/ByteString;

    .line 196
    return-void
.end method

.method public containsDefaultInstance()Z
    .registers 3

    .line 179
    iget-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->memoizedBytes:Lcom/tds/protobuf/ByteString;

    sget-object v1, Lcom/tds/protobuf/ByteString;->EMPTY:Lcom/tds/protobuf/ByteString;

    if-eq v0, v1, :cond_15

    iget-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->value:Lcom/tds/protobuf/MessageLite;

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->delayedBytes:Lcom/tds/protobuf/ByteString;

    if-eqz v0, :cond_15

    sget-object v1, Lcom/tds/protobuf/ByteString;->EMPTY:Lcom/tds/protobuf/ByteString;

    if-ne v0, v1, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method protected ensureInitialized(Lcom/tds/protobuf/MessageLite;)V
    .registers 5
    .param p1, "defaultInstance"    # Lcom/tds/protobuf/MessageLite;

    .line 422
    iget-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->value:Lcom/tds/protobuf/MessageLite;

    if-eqz v0, :cond_5

    .line 423
    return-void

    .line 425
    :cond_5
    monitor-enter p0

    .line 426
    :try_start_6
    iget-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->value:Lcom/tds/protobuf/MessageLite;

    if-eqz v0, :cond_c

    .line 427
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_35

    return-void

    .line 430
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->delayedBytes:Lcom/tds/protobuf/ByteString;

    if-eqz v0, :cond_25

    .line 432
    invoke-interface {p1}, Lcom/tds/protobuf/MessageLite;->getParserForType()Lcom/tds/protobuf/Parser;

    move-result-object v0

    iget-object v1, p0, Lcom/tds/protobuf/LazyFieldLite;->delayedBytes:Lcom/tds/protobuf/ByteString;

    iget-object v2, p0, Lcom/tds/protobuf/LazyFieldLite;->extensionRegistry:Lcom/tds/protobuf/ExtensionRegistryLite;

    .line 433
    invoke-interface {v0, v1, v2}, Lcom/tds/protobuf/Parser;->parseFrom(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/protobuf/MessageLite;

    .line 434
    .local v0, "parsedValue":Lcom/tds/protobuf/MessageLite;
    iput-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->value:Lcom/tds/protobuf/MessageLite;

    .line 435
    iget-object v1, p0, Lcom/tds/protobuf/LazyFieldLite;->delayedBytes:Lcom/tds/protobuf/ByteString;

    iput-object v1, p0, Lcom/tds/protobuf/LazyFieldLite;->memoizedBytes:Lcom/tds/protobuf/ByteString;

    .line 436
    .end local v0    # "parsedValue":Lcom/tds/protobuf/MessageLite;
    goto :goto_2b

    .line 437
    :cond_25
    iput-object p1, p0, Lcom/tds/protobuf/LazyFieldLite;->value:Lcom/tds/protobuf/MessageLite;

    .line 438
    sget-object v0, Lcom/tds/protobuf/ByteString;->EMPTY:Lcom/tds/protobuf/ByteString;

    iput-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->memoizedBytes:Lcom/tds/protobuf/ByteString;
    :try_end_2b
    .catch Lcom/tds/protobuf/InvalidProtocolBufferException; {:try_start_c .. :try_end_2b} :catch_2c
    .catchall {:try_start_c .. :try_end_2b} :catchall_35

    .line 445
    :goto_2b
    goto :goto_33

    .line 440
    :catch_2c
    move-exception v0

    .line 443
    .local v0, "e":Lcom/tds/protobuf/InvalidProtocolBufferException;
    :try_start_2d
    iput-object p1, p0, Lcom/tds/protobuf/LazyFieldLite;->value:Lcom/tds/protobuf/MessageLite;

    .line 444
    sget-object v1, Lcom/tds/protobuf/ByteString;->EMPTY:Lcom/tds/protobuf/ByteString;

    iput-object v1, p0, Lcom/tds/protobuf/LazyFieldLite;->memoizedBytes:Lcom/tds/protobuf/ByteString;

    .line 446
    .end local v0    # "e":Lcom/tds/protobuf/InvalidProtocolBufferException;
    :goto_33
    monitor-exit p0

    .line 447
    return-void

    .line 446
    :catchall_35
    move-exception v0

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_35

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 140
    if-ne p0, p1, :cond_4

    .line 141
    const/4 v0, 0x1

    return v0

    .line 144
    :cond_4
    instance-of v0, p1, Lcom/tds/protobuf/LazyFieldLite;

    if-nez v0, :cond_a

    .line 145
    const/4 v0, 0x0

    return v0

    .line 148
    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/tds/protobuf/LazyFieldLite;

    .line 154
    .local v0, "other":Lcom/tds/protobuf/LazyFieldLite;
    iget-object v1, p0, Lcom/tds/protobuf/LazyFieldLite;->value:Lcom/tds/protobuf/MessageLite;

    .line 155
    .local v1, "value1":Lcom/tds/protobuf/MessageLite;
    iget-object v2, v0, Lcom/tds/protobuf/LazyFieldLite;->value:Lcom/tds/protobuf/MessageLite;

    .line 156
    .local v2, "value2":Lcom/tds/protobuf/MessageLite;
    if-nez v1, :cond_22

    if-nez v2, :cond_22

    .line 157
    invoke-virtual {p0}, Lcom/tds/protobuf/LazyFieldLite;->toByteString()Lcom/tds/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tds/protobuf/LazyFieldLite;->toByteString()Lcom/tds/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tds/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 158
    :cond_22
    if-eqz v1, :cond_2b

    if-eqz v2, :cond_2b

    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 160
    :cond_2b
    if-eqz v1, :cond_3a

    .line 161
    invoke-interface {v1}, Lcom/tds/protobuf/MessageLite;->getDefaultInstanceForType()Lcom/tds/protobuf/MessageLite;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tds/protobuf/LazyFieldLite;->getValue(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 163
    :cond_3a
    invoke-interface {v2}, Lcom/tds/protobuf/MessageLite;->getDefaultInstanceForType()Lcom/tds/protobuf/MessageLite;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/tds/protobuf/LazyFieldLite;->getValue(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public getSerializedSize()I
    .registers 2

    .line 382
    iget-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->memoizedBytes:Lcom/tds/protobuf/ByteString;

    if-eqz v0, :cond_b

    .line 383
    iget-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->memoizedBytes:Lcom/tds/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v0

    return v0

    .line 384
    :cond_b
    iget-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->delayedBytes:Lcom/tds/protobuf/ByteString;

    if-eqz v0, :cond_14

    .line 385
    invoke-virtual {v0}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v0

    return v0

    .line 386
    :cond_14
    iget-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->value:Lcom/tds/protobuf/MessageLite;

    if-eqz v0, :cond_1f

    .line 387
    iget-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->value:Lcom/tds/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/tds/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    return v0

    .line 389
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public getValue(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/MessageLite;
    .registers 3
    .param p1, "defaultInstance"    # Lcom/tds/protobuf/MessageLite;

    .line 224
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/LazyFieldLite;->ensureInitialized(Lcom/tds/protobuf/MessageLite;)V

    .line 225
    iget-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->value:Lcom/tds/protobuf/MessageLite;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public merge(Lcom/tds/protobuf/LazyFieldLite;)V
    .registers 5
    .param p1, "other"    # Lcom/tds/protobuf/LazyFieldLite;

    .line 251
    invoke-virtual {p1}, Lcom/tds/protobuf/LazyFieldLite;->containsDefaultInstance()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 252
    return-void

    .line 255
    :cond_7
    invoke-virtual {p0}, Lcom/tds/protobuf/LazyFieldLite;->containsDefaultInstance()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 256
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/LazyFieldLite;->set(Lcom/tds/protobuf/LazyFieldLite;)V

    .line 257
    return-void

    .line 262
    :cond_11
    iget-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->extensionRegistry:Lcom/tds/protobuf/ExtensionRegistryLite;

    if-nez v0, :cond_19

    .line 263
    iget-object v0, p1, Lcom/tds/protobuf/LazyFieldLite;->extensionRegistry:Lcom/tds/protobuf/ExtensionRegistryLite;

    iput-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->extensionRegistry:Lcom/tds/protobuf/ExtensionRegistryLite;

    .line 271
    :cond_19
    iget-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->delayedBytes:Lcom/tds/protobuf/ByteString;

    if-eqz v0, :cond_28

    iget-object v1, p1, Lcom/tds/protobuf/LazyFieldLite;->delayedBytes:Lcom/tds/protobuf/ByteString;

    if-eqz v1, :cond_28

    .line 272
    invoke-virtual {v0, v1}, Lcom/tds/protobuf/ByteString;->concat(Lcom/tds/protobuf/ByteString;)Lcom/tds/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->delayedBytes:Lcom/tds/protobuf/ByteString;

    .line 273
    return-void

    .line 279
    :cond_28
    iget-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->value:Lcom/tds/protobuf/MessageLite;

    if-nez v0, :cond_3e

    iget-object v0, p1, Lcom/tds/protobuf/LazyFieldLite;->value:Lcom/tds/protobuf/MessageLite;

    if-eqz v0, :cond_3e

    .line 280
    iget-object v0, p1, Lcom/tds/protobuf/LazyFieldLite;->value:Lcom/tds/protobuf/MessageLite;

    iget-object v1, p0, Lcom/tds/protobuf/LazyFieldLite;->delayedBytes:Lcom/tds/protobuf/ByteString;

    iget-object v2, p0, Lcom/tds/protobuf/LazyFieldLite;->extensionRegistry:Lcom/tds/protobuf/ExtensionRegistryLite;

    invoke-static {v0, v1, v2}, Lcom/tds/protobuf/LazyFieldLite;->mergeValueAndBytes(Lcom/tds/protobuf/MessageLite;Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/LazyFieldLite;->setValue(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/MessageLite;

    .line 281
    return-void

    .line 282
    :cond_3e
    iget-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->value:Lcom/tds/protobuf/MessageLite;

    if-eqz v0, :cond_54

    iget-object v0, p1, Lcom/tds/protobuf/LazyFieldLite;->value:Lcom/tds/protobuf/MessageLite;

    if-nez v0, :cond_54

    .line 283
    iget-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->value:Lcom/tds/protobuf/MessageLite;

    iget-object v1, p1, Lcom/tds/protobuf/LazyFieldLite;->delayedBytes:Lcom/tds/protobuf/ByteString;

    iget-object v2, p1, Lcom/tds/protobuf/LazyFieldLite;->extensionRegistry:Lcom/tds/protobuf/ExtensionRegistryLite;

    invoke-static {v0, v1, v2}, Lcom/tds/protobuf/LazyFieldLite;->mergeValueAndBytes(Lcom/tds/protobuf/MessageLite;Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/LazyFieldLite;->setValue(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/MessageLite;

    .line 284
    return-void

    .line 299
    :cond_54
    iget-object v0, p1, Lcom/tds/protobuf/LazyFieldLite;->extensionRegistry:Lcom/tds/protobuf/ExtensionRegistryLite;

    if-eqz v0, :cond_68

    .line 300
    iget-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->value:Lcom/tds/protobuf/MessageLite;

    invoke-virtual {p1}, Lcom/tds/protobuf/LazyFieldLite;->toByteString()Lcom/tds/protobuf/ByteString;

    move-result-object v1

    iget-object v2, p1, Lcom/tds/protobuf/LazyFieldLite;->extensionRegistry:Lcom/tds/protobuf/ExtensionRegistryLite;

    invoke-static {v0, v1, v2}, Lcom/tds/protobuf/LazyFieldLite;->mergeValueAndBytes(Lcom/tds/protobuf/MessageLite;Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/LazyFieldLite;->setValue(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/MessageLite;

    .line 301
    return-void

    .line 302
    :cond_68
    iget-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->extensionRegistry:Lcom/tds/protobuf/ExtensionRegistryLite;

    if-eqz v0, :cond_7c

    .line 303
    iget-object v0, p1, Lcom/tds/protobuf/LazyFieldLite;->value:Lcom/tds/protobuf/MessageLite;

    invoke-virtual {p0}, Lcom/tds/protobuf/LazyFieldLite;->toByteString()Lcom/tds/protobuf/ByteString;

    move-result-object v1

    iget-object v2, p0, Lcom/tds/protobuf/LazyFieldLite;->extensionRegistry:Lcom/tds/protobuf/ExtensionRegistryLite;

    invoke-static {v0, v1, v2}, Lcom/tds/protobuf/LazyFieldLite;->mergeValueAndBytes(Lcom/tds/protobuf/MessageLite;Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/LazyFieldLite;->setValue(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/MessageLite;

    .line 304
    return-void

    .line 307
    :cond_7c
    iget-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->value:Lcom/tds/protobuf/MessageLite;

    invoke-virtual {p1}, Lcom/tds/protobuf/LazyFieldLite;->toByteString()Lcom/tds/protobuf/ByteString;

    move-result-object v1

    sget-object v2, Lcom/tds/protobuf/LazyFieldLite;->EMPTY_REGISTRY:Lcom/tds/protobuf/ExtensionRegistryLite;

    invoke-static {v0, v1, v2}, Lcom/tds/protobuf/LazyFieldLite;->mergeValueAndBytes(Lcom/tds/protobuf/MessageLite;Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/LazyFieldLite;->setValue(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/MessageLite;

    .line 308
    return-void
.end method

.method public mergeFrom(Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .param p1, "input"    # Lcom/tds/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    invoke-virtual {p0}, Lcom/tds/protobuf/LazyFieldLite;->containsDefaultInstance()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 321
    invoke-virtual {p1}, Lcom/tds/protobuf/CodedInputStream;->readBytes()Lcom/tds/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/tds/protobuf/LazyFieldLite;->setByteString(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ExtensionRegistryLite;)V

    .line 322
    return-void

    .line 327
    :cond_e
    iget-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->extensionRegistry:Lcom/tds/protobuf/ExtensionRegistryLite;

    if-nez v0, :cond_14

    .line 328
    iput-object p2, p0, Lcom/tds/protobuf/LazyFieldLite;->extensionRegistry:Lcom/tds/protobuf/ExtensionRegistryLite;

    .line 336
    :cond_14
    iget-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->delayedBytes:Lcom/tds/protobuf/ByteString;

    if-eqz v0, :cond_26

    .line 337
    invoke-virtual {p1}, Lcom/tds/protobuf/CodedInputStream;->readBytes()Lcom/tds/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tds/protobuf/ByteString;->concat(Lcom/tds/protobuf/ByteString;)Lcom/tds/protobuf/ByteString;

    move-result-object v0

    iget-object v1, p0, Lcom/tds/protobuf/LazyFieldLite;->extensionRegistry:Lcom/tds/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, v0, v1}, Lcom/tds/protobuf/LazyFieldLite;->setByteString(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ExtensionRegistryLite;)V

    .line 338
    return-void

    .line 345
    :cond_26
    :try_start_26
    iget-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->value:Lcom/tds/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/tds/protobuf/MessageLite;->toBuilder()Lcom/tds/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/tds/protobuf/MessageLite$Builder;->mergeFrom(Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/tds/protobuf/MessageLite$Builder;->build()Lcom/tds/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/LazyFieldLite;->setValue(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/MessageLite;
    :try_end_37
    .catch Lcom/tds/protobuf/InvalidProtocolBufferException; {:try_start_26 .. :try_end_37} :catch_38

    .line 349
    goto :goto_39

    .line 346
    :catch_38
    move-exception v0

    .line 350
    :goto_39
    return-void
.end method

.method public set(Lcom/tds/protobuf/LazyFieldLite;)V
    .registers 3
    .param p1, "other"    # Lcom/tds/protobuf/LazyFieldLite;

    .line 205
    iget-object v0, p1, Lcom/tds/protobuf/LazyFieldLite;->delayedBytes:Lcom/tds/protobuf/ByteString;

    iput-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->delayedBytes:Lcom/tds/protobuf/ByteString;

    .line 206
    iget-object v0, p1, Lcom/tds/protobuf/LazyFieldLite;->value:Lcom/tds/protobuf/MessageLite;

    iput-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->value:Lcom/tds/protobuf/MessageLite;

    .line 207
    iget-object v0, p1, Lcom/tds/protobuf/LazyFieldLite;->memoizedBytes:Lcom/tds/protobuf/ByteString;

    iput-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->memoizedBytes:Lcom/tds/protobuf/ByteString;

    .line 212
    iget-object v0, p1, Lcom/tds/protobuf/LazyFieldLite;->extensionRegistry:Lcom/tds/protobuf/ExtensionRegistryLite;

    if-eqz v0, :cond_12

    .line 213
    iput-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->extensionRegistry:Lcom/tds/protobuf/ExtensionRegistryLite;

    .line 215
    :cond_12
    return-void
.end method

.method public setByteString(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ExtensionRegistryLite;)V
    .registers 4
    .param p1, "bytes"    # Lcom/tds/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;

    .line 367
    invoke-static {p2, p1}, Lcom/tds/protobuf/LazyFieldLite;->checkArguments(Lcom/tds/protobuf/ExtensionRegistryLite;Lcom/tds/protobuf/ByteString;)V

    .line 368
    iput-object p1, p0, Lcom/tds/protobuf/LazyFieldLite;->delayedBytes:Lcom/tds/protobuf/ByteString;

    .line 369
    iput-object p2, p0, Lcom/tds/protobuf/LazyFieldLite;->extensionRegistry:Lcom/tds/protobuf/ExtensionRegistryLite;

    .line 370
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->value:Lcom/tds/protobuf/MessageLite;

    .line 371
    iput-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->memoizedBytes:Lcom/tds/protobuf/ByteString;

    .line 372
    return-void
.end method

.method public setValue(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/MessageLite;
    .registers 4
    .param p1, "value"    # Lcom/tds/protobuf/MessageLite;

    .line 235
    iget-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->value:Lcom/tds/protobuf/MessageLite;

    .line 236
    .local v0, "originalValue":Lcom/tds/protobuf/MessageLite;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tds/protobuf/LazyFieldLite;->delayedBytes:Lcom/tds/protobuf/ByteString;

    .line 237
    iput-object v1, p0, Lcom/tds/protobuf/LazyFieldLite;->memoizedBytes:Lcom/tds/protobuf/ByteString;

    .line 238
    iput-object p1, p0, Lcom/tds/protobuf/LazyFieldLite;->value:Lcom/tds/protobuf/MessageLite;

    .line 239
    return-object v0
.end method

.method public toByteString()Lcom/tds/protobuf/ByteString;
    .registers 2

    .line 397
    iget-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->memoizedBytes:Lcom/tds/protobuf/ByteString;

    if-eqz v0, :cond_7

    .line 398
    iget-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->memoizedBytes:Lcom/tds/protobuf/ByteString;

    return-object v0

    .line 402
    :cond_7
    iget-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->delayedBytes:Lcom/tds/protobuf/ByteString;

    if-eqz v0, :cond_c

    .line 403
    return-object v0

    .line 405
    :cond_c
    monitor-enter p0

    .line 406
    :try_start_d
    iget-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->memoizedBytes:Lcom/tds/protobuf/ByteString;

    if-eqz v0, :cond_15

    .line 407
    iget-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->memoizedBytes:Lcom/tds/protobuf/ByteString;

    monitor-exit p0

    return-object v0

    .line 409
    :cond_15
    iget-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->value:Lcom/tds/protobuf/MessageLite;

    if-nez v0, :cond_1e

    .line 410
    sget-object v0, Lcom/tds/protobuf/ByteString;->EMPTY:Lcom/tds/protobuf/ByteString;

    iput-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->memoizedBytes:Lcom/tds/protobuf/ByteString;

    goto :goto_26

    .line 412
    :cond_1e
    iget-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->value:Lcom/tds/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/tds/protobuf/MessageLite;->toByteString()Lcom/tds/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->memoizedBytes:Lcom/tds/protobuf/ByteString;

    .line 414
    :goto_26
    iget-object v0, p0, Lcom/tds/protobuf/LazyFieldLite;->memoizedBytes:Lcom/tds/protobuf/ByteString;

    monitor-exit p0

    return-object v0

    .line 415
    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_2a

    throw v0
.end method
