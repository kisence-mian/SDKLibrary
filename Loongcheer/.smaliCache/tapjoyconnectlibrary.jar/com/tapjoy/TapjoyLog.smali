.class public Lcom/tapjoy/TapjoyLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:Z

.field private static f:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 25
    const-class v0, Lcom/tapjoy/TapjoyLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyLog;->a:Ljava/lang/String;

    .line 28
    const/4 v0, 0x6

    sput v0, Lcom/tapjoy/TapjoyLog;->b:I

    .line 29
    const/4 v1, 0x4

    sput v1, Lcom/tapjoy/TapjoyLog;->c:I

    .line 30
    const/4 v1, 0x2

    sput v1, Lcom/tapjoy/TapjoyLog;->d:I

    .line 32
    const/4 v1, 0x0

    sput-boolean v1, Lcom/tapjoy/TapjoyLog;->e:Z

    .line 33
    sput v0, Lcom/tapjoy/TapjoyLog;->f:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .line 23
    sget-object v0, Lcom/tapjoy/TapjoyLog;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tapjoy/TapjoyLog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 182
    sget v0, Lcom/tapjoy/TapjoyLog;->f:I

    if-gt v0, p0, :cond_49

    .line 184
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1000

    if-le v0, v1, :cond_46

    .line 186
    const/4 v0, 0x0

    :goto_26
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/2addr v2, v1

    if-gt v0, v2, :cond_45

    .line 188
    mul-int/lit16 v2, v0, 0x1000

    .line 189
    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v3, v0, 0x1000

    .line 190
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_3d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 191
    :cond_3d
    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 186
    goto :goto_26

    :cond_45
    return-void

    .line 196
    :cond_46
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_49
    return-void
.end method

.method static a(Ljava/lang/String;Z)V
    .registers 3

    .line 67
    if-nez p1, :cond_18

    .line 70
    invoke-static {}, Lcom/tapjoy/TapjoyAppSettings;->getInstance()Lcom/tapjoy/TapjoyAppSettings;

    move-result-object p1

    if-eqz p1, :cond_18

    invoke-static {}, Lcom/tapjoy/TapjoyAppSettings;->getInstance()Lcom/tapjoy/TapjoyAppSettings;

    move-result-object p1

    .line 2094
    iget-object p1, p1, Lcom/tapjoy/TapjoyAppSettings;->a:Ljava/lang/String;

    .line 70
    if-eqz p1, :cond_18

    .line 71
    sget-object p0, Lcom/tapjoy/TapjoyLog;->a:Ljava/lang/String;

    const-string p1, "setLoggingLevel -- log setting already persisted"

    invoke-static {p0, p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void

    .line 76
    :cond_18
    const-string p1, "internal"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 77
    sget p0, Lcom/tapjoy/TapjoyLog;->d:I

    sput p0, Lcom/tapjoy/TapjoyLog;->f:I

    .line 78
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x13

    if-lt p0, p1, :cond_69

    .line 79
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 80
    new-instance p1, Lcom/tapjoy/TapjoyLog$1;

    invoke-direct {p1}, Lcom/tapjoy/TapjoyLog$1;-><init>()V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    goto :goto_69

    .line 88
    :cond_3c
    const-string p1, "debug_on"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 89
    sget p0, Lcom/tapjoy/TapjoyLog;->c:I

    sput p0, Lcom/tapjoy/TapjoyLog;->f:I

    goto :goto_69

    .line 90
    :cond_49
    const-string p1, "debug_off"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_56

    .line 91
    sget p0, Lcom/tapjoy/TapjoyLog;->b:I

    sput p0, Lcom/tapjoy/TapjoyLog;->f:I

    goto :goto_69

    .line 93
    :cond_56
    sget-object p1, Lcom/tapjoy/TapjoyLog;->a:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "unrecognized loggingLevel: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    sget p0, Lcom/tapjoy/TapjoyLog;->b:I

    sput p0, Lcom/tapjoy/TapjoyLog;->f:I

    .line 97
    :cond_69
    :goto_69
    sget-object p0, Lcom/tapjoy/TapjoyLog;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "logThreshold="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/tapjoy/TapjoyLog;->f:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 159
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/tapjoy/TapjoyLog;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public static e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "error"    # Lcom/tapjoy/TapjoyErrorMessage;

    .line 135
    if-eqz p1, :cond_18

    .line 136
    sget v0, Lcom/tapjoy/TapjoyLog;->f:I

    sget v1, Lcom/tapjoy/TapjoyLog;->d:I

    if-eq v0, v1, :cond_10

    invoke-virtual {p1}, Lcom/tapjoy/TapjoyErrorMessage;->getType()Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTERNAL_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    if-eq v0, v1, :cond_18

    .line 137
    :cond_10
    const/4 v0, 0x6

    invoke-virtual {p1}, Lcom/tapjoy/TapjoyErrorMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/tapjoy/TapjoyLog;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_18
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 126
    new-instance v0, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v1, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTERNAL_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-direct {v0, v1, p1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 127
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 116
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/tapjoy/TapjoyLog;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public static isLoggingEnabled()Z
    .registers 1

    .line 105
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->e:Z

    return v0
.end method

.method public static setDebugEnabled(Z)V
    .registers 4
    .param p0, "enable"    # Z

    .line 43
    sput-boolean p0, Lcom/tapjoy/TapjoyLog;->e:Z

    .line 1050
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v0

    .line 2024
    sget-boolean v1, Lcom/tapjoy/internal/gy;->a:Z

    const/4 v2, 0x0

    if-eq v1, p0, :cond_1c

    .line 2025
    sput-boolean p0, Lcom/tapjoy/internal/gy;->a:Z

    .line 2026
    if-eqz p0, :cond_15

    .line 2027
    const-string v1, "The debug mode has been enabled"

    invoke-static {v1}, Lcom/tapjoy/internal/gy;->a(Ljava/lang/String;)V

    goto :goto_1a

    .line 2029
    :cond_15
    const-string v1, "The debug mode has been disabled"

    invoke-static {v1}, Lcom/tapjoy/internal/gy;->a(Ljava/lang/String;)V

    .line 2031
    :goto_1a
    const/4 v1, 0x1

    goto :goto_1d

    .line 2033
    :cond_1c
    const/4 v1, 0x0

    .line 1149
    :goto_1d
    if-eqz v1, :cond_2a

    if-eqz p0, :cond_2a

    iget-boolean v1, v0, Lcom/tapjoy/internal/hb;->j:Z

    if-eqz v1, :cond_2a

    .line 1150
    iget-object v0, v0, Lcom/tapjoy/internal/hb;->h:Lcom/tapjoy/internal/gz;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gz;->a()V

    .line 46
    :cond_2a
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->e:Z

    if-eqz v0, :cond_34

    .line 47
    const-string v0, "debug_on"

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->a(Ljava/lang/String;Z)V

    return-void

    .line 49
    :cond_34
    const-string v0, "debug_off"

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->a(Ljava/lang/String;Z)V

    .line 51
    return-void
.end method

.method public static setInternalLogging(Z)V
    .registers 3
    .param p0, "isInternalLogging"    # Z

    .line 54
    if-eqz p0, :cond_8

    .line 55
    const/4 v0, 0x1

    const-string v1, "internal"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->a(Ljava/lang/String;Z)V

    .line 57
    :cond_8
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 169
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/tapjoy/TapjoyLog;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 149
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/tapjoy/TapjoyLog;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method
