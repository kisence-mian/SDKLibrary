.class public Lcom/tendcloud/tenddata/game/ar;
.super Ljava/lang/Object;
.source "td"


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tendcloud/tenddata/game/ar;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a()Ljava/lang/String;
    .registers 3

    const-class v0, Lcom/tendcloud/tenddata/game/ar;

    monitor-enter v0

    .line 119
    :try_start_3
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x4

    aget-object v1, v1, v2

    .line 120
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 121
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 125
    const-string v1, "TDLog"
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c

    monitor-exit v0

    return-object v1

    .line 127
    :catchall_1c
    move-exception v1

    .line 128
    :try_start_1d
    invoke-static {v1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 130
    const-string v1, "TDLog"
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_24

    monitor-exit v0

    return-object v1

    .line 118
    :catchall_24
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Ljava/lang/String;I)V
    .registers 8

    .line 71
    if-nez p0, :cond_3

    .line 72
    return-void

    .line 75
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 76
    nop

    .line 77
    nop

    .line 78
    const/16 v1, 0x7d0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_d
    const/16 v4, 0x64

    if-ge v2, v4, :cond_2a

    .line 79
    if-le v0, v1, :cond_23

    .line 80
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/tendcloud/tenddata/game/ar;->b(Ljava/lang/String;I)V

    .line 81
    nop

    .line 82
    add-int/lit16 v3, v1, 0x7d0

    .line 78
    add-int/lit8 v2, v2, 0x1

    move v5, v3

    move v3, v1

    move v1, v5

    goto :goto_d

    .line 84
    :cond_23
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/tendcloud/tenddata/game/ar;->b(Ljava/lang/String;I)V
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2b

    .line 91
    :cond_2a
    goto :goto_2f

    .line 88
    :catchall_2b
    move-exception p0

    .line 90
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 92
    :goto_2f
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 64
    sget-boolean v0, Lcom/tendcloud/tenddata/game/ar;->a:Z

    if-eqz v0, :cond_b

    .line 65
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/ar;->a(Ljava/lang/String;I)V

    .line 66
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    :cond_b
    return-void
.end method

.method private static b(Ljava/lang/String;I)V
    .registers 3

    .line 94
    invoke-static {}, Lcom/tendcloud/tenddata/game/ar;->a()Ljava/lang/String;

    move-result-object v0

    .line 95
    packed-switch p1, :pswitch_data_1e

    goto :goto_1c

    .line 109
    :pswitch_8
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    goto :goto_1c

    .line 106
    :pswitch_c
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    goto :goto_1c

    .line 100
    :pswitch_10
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    goto :goto_1c

    .line 103
    :pswitch_14
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    goto :goto_1c

    .line 97
    :pswitch_18
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    nop

    .line 114
    :goto_1c
    return-void

    nop

    :pswitch_data_1e
    .packed-switch 0x2
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method

.method public static dForDeveloper(Ljava/lang/String;)V
    .registers 2

    .line 54
    sget-boolean v0, Lcom/tendcloud/tenddata/game/ar;->a:Z

    if-eqz v0, :cond_8

    .line 55
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/ar;->a(Ljava/lang/String;I)V

    .line 56
    :cond_8
    return-void
.end method

.method public static varargs dForInternal([Ljava/lang/String;)V
    .registers 1

    .line 30
    return-void
.end method

.method public static eForDeveloper(Ljava/lang/String;)V
    .registers 2

    .line 59
    sget-boolean v0, Lcom/tendcloud/tenddata/game/ar;->a:Z

    if-eqz v0, :cond_8

    .line 60
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/ar;->a(Ljava/lang/String;I)V

    .line 61
    :cond_8
    return-void
.end method

.method public static eForInternal(Ljava/lang/Throwable;)V
    .registers 1

    .line 43
    return-void
.end method

.method public static varargs eForInternal([Ljava/lang/String;)V
    .registers 1

    .line 40
    return-void
.end method

.method public static iForDeveloper(Ljava/lang/String;)V
    .registers 2

    .line 49
    sget-boolean v0, Lcom/tendcloud/tenddata/game/ar;->a:Z

    if-eqz v0, :cond_8

    .line 50
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/ar;->a(Ljava/lang/String;I)V

    .line 51
    :cond_8
    return-void
.end method

.method public static varargs iForInternal([Ljava/lang/String;)V
    .registers 1

    .line 20
    return-void
.end method

.method public static json(Ljava/lang/String;)V
    .registers 1

    .line 46
    return-void
.end method
