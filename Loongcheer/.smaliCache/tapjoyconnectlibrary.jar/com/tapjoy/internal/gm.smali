.class public final Lcom/tapjoy/internal/gm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public c:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([BI)J
    .registers 7

    .line 173
    aget-byte v0, p0, p1

    .line 174
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    .line 175
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    .line 176
    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    .line 179
    and-int/lit16 p1, v0, 0x80

    const/16 v3, 0x80

    if-ne p1, v3, :cond_18

    and-int/lit8 p1, v0, 0x7f

    add-int/lit16 v0, p1, 0x80

    .line 180
    :cond_18
    and-int/lit16 p1, v1, 0x80

    if-ne p1, v3, :cond_20

    and-int/lit8 p1, v1, 0x7f

    add-int/lit16 v1, p1, 0x80

    .line 181
    :cond_20
    and-int/lit16 p1, v2, 0x80

    if-ne p1, v3, :cond_28

    and-int/lit8 p1, v2, 0x7f

    add-int/lit16 v2, p1, 0x80

    .line 182
    :cond_28
    and-int/lit16 p1, p0, 0x80

    if-ne p1, v3, :cond_2f

    and-int/lit8 p0, p0, 0x7f

    add-int/2addr p0, v3

    .line 184
    :cond_2f
    int-to-long v3, v0

    const/16 p1, 0x18

    shl-long/2addr v3, p1

    int-to-long v0, v1

    const/16 p1, 0x10

    shl-long/2addr v0, p1

    add-long/2addr v3, v0

    int-to-long v0, v2

    const/16 p1, 0x8

    shl-long/2addr v0, p1

    add-long/2addr v3, v0

    int-to-long p0, p0

    add-long/2addr v3, p0

    return-wide v3
.end method

.method private static b([BI)J
    .registers 6

    .line 192
    invoke-static {p0, p1}, Lcom/tapjoy/internal/gm;->a([BI)J

    move-result-wide v0

    .line 193
    add-int/lit8 p1, p1, 0x4

    invoke-static {p0, p1}, Lcom/tapjoy/internal/gm;->a([BI)J

    move-result-wide p0

    .line 194
    const-wide v2, 0x83aa7e80L

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    mul-long p0, p0, v2

    const-wide v2, 0x100000000L

    div-long/2addr p0, v2

    add-long/2addr v0, p0

    return-wide v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)Z
    .registers 23

    .line 79
    move-object/from16 v1, p0

    .line 81
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_4
    new-instance v4, Ljava/net/DatagramSocket;

    invoke-direct {v4}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_10c
    .catchall {:try_start_4 .. :try_end_9} :catchall_104

    .line 82
    move/from16 v0, p2

    :try_start_b
    invoke-virtual {v4, v0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 83
    invoke-static/range {p1 .. p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 84
    const/16 v3, 0x30

    new-array v5, v3, [B

    .line 85
    new-instance v6, Ljava/net/DatagramPacket;

    const/16 v7, 0x7b

    invoke-direct {v6, v5, v3, v0, v7}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 90
    const/16 v0, 0x1b

    aput-byte v0, v5, v2

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 95
    nop

    .line 1202
    const-wide/16 v11, 0x3e8

    div-long v13, v7, v11
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2e} :catch_fc
    .catchall {:try_start_b .. :try_end_2e} :catchall_f4

    .line 1203
    invoke-static {v13, v14}, Ljava/lang/Long;->signum(J)I

    mul-long v15, v13, v11

    sub-long v15, v7, v15

    .line 1204
    const-wide v17, 0x83aa7e80L

    add-long v13, v13, v17

    .line 1207
    const/16 v0, 0x18

    move-object/from16 v17, v4

    shr-long v3, v13, v0

    long-to-int v4, v3

    int-to-byte v3, v4

    const/16 v4, 0x28

    :try_start_46
    aput-byte v3, v5, v4
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_48} :catch_ef
    .catchall {:try_start_46 .. :try_end_48} :catchall_ea

    .line 1208
    const/16 v3, 0x29

    const/16 v18, 0x10

    shr-long v0, v13, v18

    long-to-int v1, v0

    int-to-byte v0, v1

    :try_start_50
    aput-byte v0, v5, v3

    .line 1209
    const/16 v0, 0x2a

    const/16 v1, 0x8

    shr-long v11, v13, v1

    long-to-int v3, v11

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 1210
    const/16 v0, 0x2b

    shr-long v11, v13, v2

    long-to-int v3, v11

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 1212
    const-wide v11, 0x100000000L

    mul-long v15, v15, v11

    const-wide/16 v11, 0x3e8

    div-long/2addr v15, v11

    .line 1214
    const/16 v0, 0x2c

    const/16 v3, 0x18

    shr-long v11, v15, v3

    long-to-int v3, v11

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 1215
    const/16 v0, 0x2d

    shr-long v11, v15, v18

    long-to-int v3, v11

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 1216
    const/16 v0, 0x2e

    shr-long v11, v15, v1

    long-to-int v1, v11

    int-to-byte v1, v1

    aput-byte v1, v5, v0

    .line 1218
    const/16 v0, 0x2f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    const-wide v13, 0x406fe00000000000L    # 255.0

    mul-double v11, v11, v13

    double-to-int v1, v11

    int-to-byte v1, v1

    aput-byte v1, v5, v0
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_99} :catch_e6
    .catchall {:try_start_50 .. :try_end_99} :catchall_e2

    .line 97
    move-object/from16 v1, v17

    :try_start_9b
    invoke-virtual {v1, v6}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 100
    new-instance v0, Ljava/net/DatagramPacket;

    const/16 v3, 0x30

    invoke-direct {v0, v5, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 101
    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 102
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 103
    sub-long v9, v11, v9

    add-long/2addr v7, v9

    .line 106
    const/16 v0, 0x18

    invoke-static {v5, v0}, Lcom/tapjoy/internal/gm;->b([BI)J

    move-result-wide v13

    .line 107
    const/16 v0, 0x20

    invoke-static {v5, v0}, Lcom/tapjoy/internal/gm;->b([BI)J

    move-result-wide v15

    .line 108
    invoke-static {v5, v4}, Lcom/tapjoy/internal/gm;->b([BI)J

    move-result-wide v3

    .line 109
    sub-long v5, v3, v15

    sub-long/2addr v9, v5

    .line 118
    sub-long/2addr v15, v13

    sub-long/2addr v3, v7

    add-long/2addr v15, v3

    const-wide/16 v3, 0x2

    div-long/2addr v15, v3
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_c8} :catch_de
    .catchall {:try_start_9b .. :try_end_c8} :catchall_da

    .line 124
    add-long/2addr v7, v15

    move-object/from16 v4, p0

    :try_start_cb
    iput-wide v7, v4, Lcom/tapjoy/internal/gm;->a:J

    .line 125
    iput-wide v11, v4, Lcom/tapjoy/internal/gm;->b:J

    .line 126
    iput-wide v9, v4, Lcom/tapjoy/internal/gm;->c:J
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_d1} :catch_d8
    .catchall {:try_start_cb .. :try_end_d1} :catchall_d6

    .line 133
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 137
    const/4 v0, 0x1

    return v0

    .line 132
    :catchall_d6
    move-exception v0

    goto :goto_fa

    .line 127
    :catch_d8
    move-exception v0

    goto :goto_102

    .line 132
    :catchall_da
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_fa

    .line 127
    :catch_de
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_102

    .line 132
    :catchall_e2
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_ec

    .line 127
    :catch_e6
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_f1

    .line 132
    :catchall_ea
    move-exception v0

    move-object v4, v1

    :goto_ec
    move-object/from16 v1, v17

    goto :goto_fa

    .line 127
    :catch_ef
    move-exception v0

    move-object v4, v1

    :goto_f1
    move-object/from16 v1, v17

    goto :goto_102

    .line 132
    :catchall_f4
    move-exception v0

    move-object/from16 v19, v4

    move-object v4, v1

    move-object/from16 v1, v19

    :goto_fa
    move-object v3, v1

    goto :goto_106

    .line 127
    :catch_fc
    move-exception v0

    move-object/from16 v19, v4

    move-object v4, v1

    move-object/from16 v1, v19

    :goto_102
    move-object v3, v1

    goto :goto_10e

    .line 132
    :catchall_104
    move-exception v0

    move-object v4, v1

    :goto_106
    if-eqz v3, :cond_10b

    .line 133
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    .line 135
    :cond_10b
    throw v0

    .line 127
    :catch_10c
    move-exception v0

    move-object v4, v1

    .line 132
    :goto_10e
    if-eqz v3, :cond_113

    .line 133
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    .line 130
    :cond_113
    return v2
.end method
