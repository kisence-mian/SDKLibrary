.class public abstract Lcom/tds/common/websocket/framing/FramedataImpl1;
.super Ljava/lang/Object;
.source "FramedataImpl1.java"

# interfaces
.implements Lcom/tds/common/websocket/framing/Framedata;


# instance fields
.field private fin:Z

.field private optcode:Lcom/tds/common/websocket/enums/Opcode;

.field private rsv1:Z

.field private rsv2:Z

.field private rsv3:Z

.field private transferemasked:Z

.field private unmaskedpayload:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lcom/tds/common/websocket/enums/Opcode;)V
    .registers 3
    .param p1, "op"    # Lcom/tds/common/websocket/enums/Opcode;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->optcode:Lcom/tds/common/websocket/enums/Opcode;

    .line 87
    invoke-static {}, Lcom/tds/common/websocket/util/ByteBufferUtils;->getEmptyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->fin:Z

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->transferemasked:Z

    .line 90
    iput-boolean v0, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->rsv1:Z

    .line 91
    iput-boolean v0, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->rsv2:Z

    .line 92
    iput-boolean v0, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->rsv3:Z

    .line 93
    return-void
.end method

.method public static get(Lcom/tds/common/websocket/enums/Opcode;)Lcom/tds/common/websocket/framing/FramedataImpl1;
    .registers 3
    .param p0, "opcode"    # Lcom/tds/common/websocket/enums/Opcode;

    .line 230
    if-eqz p0, :cond_39

    .line 233
    sget-object v0, Lcom/tds/common/websocket/framing/FramedataImpl1$1;->$SwitchMap$com$tds$common$websocket$enums$Opcode:[I

    invoke-virtual {p0}, Lcom/tds/common/websocket/enums/Opcode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_42

    .line 247
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Supplied opcode is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :pswitch_15
    new-instance v0, Lcom/tds/common/websocket/framing/ContinuousFrame;

    invoke-direct {v0}, Lcom/tds/common/websocket/framing/ContinuousFrame;-><init>()V

    return-object v0

    .line 243
    :pswitch_1b
    new-instance v0, Lcom/tds/common/websocket/framing/CloseFrame;

    invoke-direct {v0}, Lcom/tds/common/websocket/framing/CloseFrame;-><init>()V

    return-object v0

    .line 241
    :pswitch_21
    new-instance v0, Lcom/tds/common/websocket/framing/BinaryFrame;

    invoke-direct {v0}, Lcom/tds/common/websocket/framing/BinaryFrame;-><init>()V

    return-object v0

    .line 239
    :pswitch_27
    new-instance v0, Lcom/tds/common/websocket/framing/TextFrame;

    invoke-direct {v0}, Lcom/tds/common/websocket/framing/TextFrame;-><init>()V

    return-object v0

    .line 237
    :pswitch_2d
    new-instance v0, Lcom/tds/common/websocket/framing/PongFrame;

    invoke-direct {v0}, Lcom/tds/common/websocket/framing/PongFrame;-><init>()V

    return-object v0

    .line 235
    :pswitch_33
    new-instance v0, Lcom/tds/common/websocket/framing/PingFrame;

    invoke-direct {v0}, Lcom/tds/common/websocket/framing/PingFrame;-><init>()V

    return-object v0

    .line 231
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Supplied opcode cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_33
        :pswitch_2d
        :pswitch_27
        :pswitch_21
        :pswitch_1b
        :pswitch_15
    .end packed-switch
.end method


# virtual methods
.method public append(Lcom/tds/common/websocket/framing/Framedata;)V
    .registers 5
    .param p1, "nextframe"    # Lcom/tds/common/websocket/framing/Framedata;

    .line 132
    invoke-interface {p1}, Lcom/tds/common/websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 133
    .local v0, "b":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_1e

    .line 134
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    .line 135
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 136
    iget-object v1, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 137
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    goto :goto_6b

    .line 139
    :cond_1e
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 140
    iget-object v1, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 141
    iget-object v1, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 143
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_5e

    .line 144
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 145
    .local v1, "tmp":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 146
    iget-object v2, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 147
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 148
    iput-object v1, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    .line 150
    .end local v1    # "tmp":Ljava/nio/ByteBuffer;
    goto :goto_63

    .line 151
    :cond_5e
    iget-object v1, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 153
    :goto_63
    iget-object v1, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 154
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 156
    :goto_6b
    invoke-interface {p1}, Lcom/tds/common/websocket/framing/Framedata;->isFin()Z

    move-result v1

    iput-boolean v1, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->fin:Z

    .line 158
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 253
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 254
    return v0

    .line 256
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_51

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_51

    .line 260
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/tds/common/websocket/framing/FramedataImpl1;

    .line 262
    .local v2, "that":Lcom/tds/common/websocket/framing/FramedataImpl1;
    iget-boolean v3, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->fin:Z

    iget-boolean v4, v2, Lcom/tds/common/websocket/framing/FramedataImpl1;->fin:Z

    if-eq v3, v4, :cond_1c

    .line 263
    return v1

    .line 265
    :cond_1c
    iget-boolean v3, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->transferemasked:Z

    iget-boolean v4, v2, Lcom/tds/common/websocket/framing/FramedataImpl1;->transferemasked:Z

    if-eq v3, v4, :cond_23

    .line 266
    return v1

    .line 268
    :cond_23
    iget-boolean v3, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->rsv1:Z

    iget-boolean v4, v2, Lcom/tds/common/websocket/framing/FramedataImpl1;->rsv1:Z

    if-eq v3, v4, :cond_2a

    .line 269
    return v1

    .line 271
    :cond_2a
    iget-boolean v3, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->rsv2:Z

    iget-boolean v4, v2, Lcom/tds/common/websocket/framing/FramedataImpl1;->rsv2:Z

    if-eq v3, v4, :cond_31

    .line 272
    return v1

    .line 274
    :cond_31
    iget-boolean v3, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->rsv3:Z

    iget-boolean v4, v2, Lcom/tds/common/websocket/framing/FramedataImpl1;->rsv3:Z

    if-eq v3, v4, :cond_38

    .line 275
    return v1

    .line 277
    :cond_38
    iget-object v3, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->optcode:Lcom/tds/common/websocket/enums/Opcode;

    iget-object v4, v2, Lcom/tds/common/websocket/framing/FramedataImpl1;->optcode:Lcom/tds/common/websocket/enums/Opcode;

    if-eq v3, v4, :cond_3f

    .line 278
    return v1

    .line 280
    :cond_3f
    iget-object v3, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_4a

    iget-object v0, v2, Lcom/tds/common/websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_50

    :cond_4a
    iget-object v3, v2, Lcom/tds/common/websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    if-nez v3, :cond_4f

    goto :goto_50

    :cond_4f
    move v0, v1

    :goto_50
    return v0

    .line 257
    .end local v2    # "that":Lcom/tds/common/websocket/framing/FramedataImpl1;
    :cond_51
    :goto_51
    return v1
.end method

.method public getOpcode()Lcom/tds/common/websocket/enums/Opcode;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->optcode:Lcom/tds/common/websocket/enums/Opcode;

    return-object v0
.end method

.method public getPayloadData()Ljava/nio/ByteBuffer;
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getTransfereMasked()Z
    .registers 2

    .line 122
    iget-boolean v0, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->transferemasked:Z

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 286
    iget-boolean v0, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->fin:Z

    .line 287
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->optcode:Lcom/tds/common/websocket/enums/Opcode;

    invoke-virtual {v2}, Lcom/tds/common/websocket/enums/Opcode;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 288
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    add-int/2addr v0, v2

    .line 289
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->transferemasked:Z

    add-int/2addr v1, v2

    .line 290
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->rsv1:Z

    add-int/2addr v0, v2

    .line 291
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->rsv2:Z

    add-int/2addr v1, v2

    .line 292
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->rsv3:Z

    add-int/2addr v0, v2

    .line 293
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public isFin()Z
    .registers 2

    .line 112
    iget-boolean v0, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->fin:Z

    return v0
.end method

.method public isRSV1()Z
    .registers 2

    .line 97
    iget-boolean v0, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->rsv1:Z

    return v0
.end method

.method public isRSV2()Z
    .registers 2

    .line 102
    iget-boolean v0, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->rsv2:Z

    return v0
.end method

.method public isRSV3()Z
    .registers 2

    .line 107
    iget-boolean v0, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->rsv3:Z

    return v0
.end method

.method public abstract isValid()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidDataException;
        }
    .end annotation
.end method

.method public setFin(Z)V
    .registers 2
    .param p1, "fin"    # Z

    .line 184
    iput-boolean p1, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->fin:Z

    .line 185
    return-void
.end method

.method public setPayload(Ljava/nio/ByteBuffer;)V
    .registers 2
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    .line 175
    iput-object p1, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    .line 176
    return-void
.end method

.method public setRSV1(Z)V
    .registers 2
    .param p1, "rsv1"    # Z

    .line 193
    iput-boolean p1, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->rsv1:Z

    .line 194
    return-void
.end method

.method public setRSV2(Z)V
    .registers 2
    .param p1, "rsv2"    # Z

    .line 202
    iput-boolean p1, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->rsv2:Z

    .line 203
    return-void
.end method

.method public setRSV3(Z)V
    .registers 2
    .param p1, "rsv3"    # Z

    .line 211
    iput-boolean p1, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->rsv3:Z

    .line 212
    return-void
.end method

.method public setTransferemasked(Z)V
    .registers 2
    .param p1, "transferemasked"    # Z

    .line 220
    iput-boolean p1, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->transferemasked:Z

    .line 221
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Framedata{ opcode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tds/common/websocket/framing/FramedataImpl1;->getOpcode()Lcom/tds/common/websocket/enums/Opcode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tds/common/websocket/framing/FramedataImpl1;->isFin()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rsv1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tds/common/websocket/framing/FramedataImpl1;->isRSV1()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rsv2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 163
    invoke-virtual {p0}, Lcom/tds/common/websocket/framing/FramedataImpl1;->isRSV2()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rsv3:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tds/common/websocket/framing/FramedataImpl1;->isRSV3()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payload length:[pos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    .line 164
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", len:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], payload:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    .line 165
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_7e

    const-string v1, "(too big to display)"

    goto :goto_89

    :cond_7e
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/tds/common/websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    .line 166
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    :goto_89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    return-object v0
.end method
