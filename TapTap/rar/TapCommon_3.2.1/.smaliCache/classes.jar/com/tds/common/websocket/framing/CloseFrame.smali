.class public Lcom/tds/common/websocket/framing/CloseFrame;
.super Lcom/tds/common/websocket/framing/ControlFrame;
.source "CloseFrame.java"


# static fields
.field public static final ABNORMAL_CLOSE:I = 0x3ee

.field public static final BAD_GATEWAY:I = 0x3f6

.field public static final BUGGYCLOSE:I = -0x2

.field public static final EXTENSION:I = 0x3f2

.field public static final FLASHPOLICY:I = -0x3

.field public static final GOING_AWAY:I = 0x3e9

.field public static final NEVER_CONNECTED:I = -0x1

.field public static final NOCODE:I = 0x3ed

.field public static final NORMAL:I = 0x3e8

.field public static final NO_UTF8:I = 0x3ef

.field public static final POLICY_VALIDATION:I = 0x3f0

.field public static final PROTOCOL_ERROR:I = 0x3ea

.field public static final REFUSE:I = 0x3eb

.field public static final SERVICE_RESTART:I = 0x3f4

.field public static final TLS_ERROR:I = 0x3f7

.field public static final TOOBIG:I = 0x3f1

.field public static final TRY_AGAIN_LATER:I = 0x3f5

.field public static final UNEXPECTED_CONDITION:I = 0x3f3


# instance fields
.field private code:I

.field private reason:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 170
    sget-object v0, Lcom/tds/common/websocket/enums/Opcode;->CLOSING:Lcom/tds/common/websocket/enums/Opcode;

    invoke-direct {p0, v0}, Lcom/tds/common/websocket/framing/ControlFrame;-><init>(Lcom/tds/common/websocket/enums/Opcode;)V

    .line 171
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/tds/common/websocket/framing/CloseFrame;->setReason(Ljava/lang/String;)V

    .line 172
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/tds/common/websocket/framing/CloseFrame;->setCode(I)V

    .line 173
    return-void
.end method

.method private updatePayload()V
    .registers 5

    .line 296
    iget-object v0, p0, Lcom/tds/common/websocket/framing/CloseFrame;->reason:Ljava/lang/String;

    invoke-static {v0}, Lcom/tds/common/websocket/util/Charsetfunctions;->utf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 297
    .local v0, "by":[B
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 298
    .local v1, "buf":Ljava/nio/ByteBuffer;
    iget v2, p0, Lcom/tds/common/websocket/framing/CloseFrame;->code:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 299
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 300
    array-length v3, v0

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 301
    .local v2, "pay":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 302
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 303
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 304
    invoke-super {p0, v2}, Lcom/tds/common/websocket/framing/ControlFrame;->setPayload(Ljava/nio/ByteBuffer;)V

    .line 305
    return-void
.end method

.method private validateUtf8(Ljava/nio/ByteBuffer;I)V
    .registers 6
    .param p1, "payload"    # Ljava/nio/ByteBuffer;
    .param p2, "mark"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 283
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 284
    invoke-static {p1}, Lcom/tds/common/websocket/util/Charsetfunctions;->stringUtf8(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/websocket/framing/CloseFrame;->reason:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_f} :catch_16
    .catchall {:try_start_0 .. :try_end_f} :catchall_14

    .line 288
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 289
    nop

    .line 290
    return-void

    .line 288
    :catchall_14
    move-exception v0

    goto :goto_1f

    .line 285
    :catch_16
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_17
    new-instance v1, Lcom/tds/common/websocket/exceptions/InvalidDataException;

    const/16 v2, 0x3ef

    invoke-direct {v1, v2}, Lcom/tds/common/websocket/exceptions/InvalidDataException;-><init>(I)V

    .end local p0    # "this":Lcom/tds/common/websocket/framing/CloseFrame;
    .end local p1    # "payload":Ljava/nio/ByteBuffer;
    .end local p2    # "mark":I
    throw v1
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_14

    .line 288
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local p0    # "this":Lcom/tds/common/websocket/framing/CloseFrame;
    .restart local p1    # "payload":Ljava/nio/ByteBuffer;
    .restart local p2    # "mark":I
    :goto_1f
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 289
    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 317
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 318
    return v0

    .line 320
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_35

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_35

    .line 323
    :cond_12
    invoke-super {p0, p1}, Lcom/tds/common/websocket/framing/ControlFrame;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 324
    return v1

    .line 327
    :cond_19
    move-object v2, p1

    check-cast v2, Lcom/tds/common/websocket/framing/CloseFrame;

    .line 329
    .local v2, "that":Lcom/tds/common/websocket/framing/CloseFrame;
    iget v3, p0, Lcom/tds/common/websocket/framing/CloseFrame;->code:I

    iget v4, v2, Lcom/tds/common/websocket/framing/CloseFrame;->code:I

    if-eq v3, v4, :cond_23

    .line 330
    return v1

    .line 332
    :cond_23
    iget-object v3, p0, Lcom/tds/common/websocket/framing/CloseFrame;->reason:Ljava/lang/String;

    if-eqz v3, :cond_2e

    iget-object v0, v2, Lcom/tds/common/websocket/framing/CloseFrame;->reason:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_34

    :cond_2e
    iget-object v3, v2, Lcom/tds/common/websocket/framing/CloseFrame;->reason:Ljava/lang/String;

    if-nez v3, :cond_33

    goto :goto_34

    :cond_33
    move v0, v1

    :goto_34
    return v0

    .line 321
    .end local v2    # "that":Lcom/tds/common/websocket/framing/CloseFrame;
    :cond_35
    :goto_35
    return v1
.end method

.method public getCloseCode()I
    .registers 2

    .line 209
    iget v0, p0, Lcom/tds/common/websocket/framing/CloseFrame;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 218
    iget-object v0, p0, Lcom/tds/common/websocket/framing/CloseFrame;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getPayloadData()Ljava/nio/ByteBuffer;
    .registers 3

    .line 309
    iget v0, p0, Lcom/tds/common/websocket/framing/CloseFrame;->code:I

    const/16 v1, 0x3ed

    if-ne v0, v1, :cond_b

    .line 310
    invoke-static {}, Lcom/tds/common/websocket/util/ByteBufferUtils;->getEmptyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 312
    :cond_b
    invoke-super {p0}, Lcom/tds/common/websocket/framing/ControlFrame;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 337
    invoke-super {p0}, Lcom/tds/common/websocket/framing/ControlFrame;->hashCode()I

    move-result v0

    .line 338
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/tds/common/websocket/framing/CloseFrame;->code:I

    add-int/2addr v1, v2

    .line 339
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/tds/common/websocket/framing/CloseFrame;->reason:Ljava/lang/String;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    add-int/2addr v0, v2

    .line 340
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public isValid()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 228
    invoke-super {p0}, Lcom/tds/common/websocket/framing/ControlFrame;->isValid()V

    .line 229
    iget v0, p0, Lcom/tds/common/websocket/framing/CloseFrame;->code:I

    const/16 v1, 0x3ef

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/tds/common/websocket/framing/CloseFrame;->reason:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_1a

    .line 230
    :cond_12
    new-instance v0, Lcom/tds/common/websocket/exceptions/InvalidDataException;

    const-string v2, "Received text is no valid utf8 string!"

    invoke-direct {v0, v1, v2}, Lcom/tds/common/websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 232
    :cond_1a
    :goto_1a
    iget v0, p0, Lcom/tds/common/websocket/framing/CloseFrame;->code:I

    const/16 v1, 0x3ea

    const/16 v2, 0x3ed

    if-ne v0, v2, :cond_33

    iget-object v0, p0, Lcom/tds/common/websocket/framing/CloseFrame;->reason:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2b

    goto :goto_33

    .line 233
    :cond_2b
    new-instance v0, Lcom/tds/common/websocket/exceptions/InvalidDataException;

    const-string v2, "A close frame must have a closecode if it has a reason"

    invoke-direct {v0, v1, v2}, Lcom/tds/common/websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 237
    :cond_33
    :goto_33
    iget v0, p0, Lcom/tds/common/websocket/framing/CloseFrame;->code:I

    const/16 v3, 0x3f7

    if-le v0, v3, :cond_46

    const/16 v4, 0xbb8

    if-lt v0, v4, :cond_3e

    goto :goto_46

    .line 238
    :cond_3e
    new-instance v0, Lcom/tds/common/websocket/exceptions/InvalidDataException;

    const-string v2, "Trying to send an illegal close code!"

    invoke-direct {v0, v1, v2}, Lcom/tds/common/websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 240
    :cond_46
    :goto_46
    const/16 v1, 0x3ee

    if-eq v0, v1, :cond_5b

    if-eq v0, v3, :cond_5b

    if-eq v0, v2, :cond_5b

    const/16 v1, 0x1387

    if-gt v0, v1, :cond_5b

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_5b

    const/16 v1, 0x3ec

    if-eq v0, v1, :cond_5b

    .line 244
    return-void

    .line 242
    :cond_5b
    new-instance v0, Lcom/tds/common/websocket/exceptions/InvalidFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closecode must not be sent over the wire: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tds/common/websocket/framing/CloseFrame;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tds/common/websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCode(I)V
    .registers 3
    .param p1, "code"    # I

    .line 181
    iput p1, p0, Lcom/tds/common/websocket/framing/CloseFrame;->code:I

    .line 183
    const/16 v0, 0x3f7

    if-ne p1, v0, :cond_e

    .line 184
    const/16 v0, 0x3ed

    iput v0, p0, Lcom/tds/common/websocket/framing/CloseFrame;->code:I

    .line 185
    const-string v0, ""

    iput-object v0, p0, Lcom/tds/common/websocket/framing/CloseFrame;->reason:Ljava/lang/String;

    .line 187
    :cond_e
    invoke-direct {p0}, Lcom/tds/common/websocket/framing/CloseFrame;->updatePayload()V

    .line 188
    return-void
.end method

.method public setPayload(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    .line 248
    const/16 v0, 0x3ed

    iput v0, p0, Lcom/tds/common/websocket/framing/CloseFrame;->code:I

    .line 249
    const-string v0, ""

    iput-object v0, p0, Lcom/tds/common/websocket/framing/CloseFrame;->reason:Ljava/lang/String;

    .line 250
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 251
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_16

    .line 252
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/tds/common/websocket/framing/CloseFrame;->code:I

    goto :goto_55

    .line 253
    :cond_16
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    .line 254
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/tds/common/websocket/framing/CloseFrame;->code:I

    goto :goto_55

    .line 256
    :cond_22
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_42

    .line 257
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 258
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 259
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 260
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 261
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/tds/common/websocket/framing/CloseFrame;->code:I

    .line 263
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :cond_42
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 265
    :try_start_45
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 266
    .local v0, "mark":I
    invoke-direct {p0, p1, v0}, Lcom/tds/common/websocket/framing/CloseFrame;->validateUtf8(Ljava/nio/ByteBuffer;I)V
    :try_end_4c
    .catch Lcom/tds/common/websocket/exceptions/InvalidDataException; {:try_start_45 .. :try_end_4c} :catch_4d

    .line 270
    .end local v0    # "mark":I
    goto :goto_55

    .line 267
    :catch_4d
    move-exception v0

    .line 268
    .local v0, "e":Lcom/tds/common/websocket/exceptions/InvalidDataException;
    const/16 v1, 0x3ef

    iput v1, p0, Lcom/tds/common/websocket/framing/CloseFrame;->code:I

    .line 269
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tds/common/websocket/framing/CloseFrame;->reason:Ljava/lang/String;

    .line 272
    .end local v0    # "e":Lcom/tds/common/websocket/exceptions/InvalidDataException;
    :goto_55
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 196
    if-nez p1, :cond_4

    .line 197
    const-string p1, ""

    .line 199
    :cond_4
    iput-object p1, p0, Lcom/tds/common/websocket/framing/CloseFrame;->reason:Ljava/lang/String;

    .line 200
    invoke-direct {p0}, Lcom/tds/common/websocket/framing/CloseFrame;->updatePayload()V

    .line 201
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/tds/common/websocket/framing/ControlFrame;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tds/common/websocket/framing/CloseFrame;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
