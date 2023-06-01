.class public Lcom/ssjj/fnsdk/core/TLog;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ssjj/fnsdk/core/TLog$TLogListenerWrapper;
    }
.end annotation


# static fields
.field public static final C100:I = 0x64

.field public static final C101:I = 0x65

.field public static final C102:I = 0x66

.field public static final C103:I = 0x67

.field public static final C110:I = 0x6e

.field public static final C112:I = 0x70

.field public static final C113:I = 0x71

.field public static final C114:I = 0x72

.field public static final C115:I = 0x73

.field public static final C116:I = 0x74

.field public static final C117:I = 0x75

.field public static final C118:I = 0x76

.field public static final C119:I = 0x77

.field public static final C120:I = 0x78

.field public static final C121:I = 0x79

.field public static final C122:I = 0x7a

.field public static final C123:I = 0x7b

.field public static final C124:I = 0x7c

.field public static final C126:I = 0x7e

.field public static final C140:I = 0x8c

.field public static final C141:I = 0x8d

.field public static final C142:I = 0x8e

.field public static final C143:I = 0x8f

.field public static final C144:I = 0x90

.field public static final C145:I = 0x91

.field public static final C146:I = 0x92

.field public static final C147:I = 0x93

.field public static final C148:I = 0x94

.field public static final C149:I = 0x95

.field public static final C150:I = 0x96

.field public static final C151:I = 0x97

.field public static final C152:I = 0x98

.field public static final C153:I = 0x99

.field public static final C154:I = 0x9a

.field public static final C155:I = 0x9b

.field public static final C156:I = 0x9c

.field public static final C157:I = 0x9d

.field public static final C201:I = 0xc9

.field public static final C202:I = 0xca

.field public static final C211:I = 0xd3

.field public static final C212:I = 0xd4

.field public static final C213:I = 0xd5

.field public static final C214:I = 0xd6

.field public static final C221:I = 0xdd

.field public static final C222:I = 0xde

.field public static final C223:I = 0xdf

.field public static final C226:I = 0xe2

.field public static final C227:I = 0xe3


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static log(ILjava/lang/String;)V
    .registers 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;J)V

    return-void
.end method

.method public static log(ILjava/lang/String;J)V
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->tlog(ILjava/lang/String;J)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_c

    :catchall_8
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_c
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;JJI)V
    .registers 15

    :try_start_0
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->tlog(Ljava/lang/String;Ljava/lang/String;JJI)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    goto :goto_11

    :catchall_d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_11
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/ssjj/fnsdk/core/TLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 11

    :try_start_0
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->tlog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    goto :goto_10

    :catchall_c
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_10
    return-void
.end method

.method public static setTLogDebug(Z)V
    .registers 2

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->setTLogDebug(Z)V

    return-void
.end method

.method public static setTLogEnable(Z)V
    .registers 2

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->setTLogEnable(Z)V

    return-void
.end method
