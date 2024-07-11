.class public Lcom/umeng/analytics/game/a;
.super Ljava/lang/Object;
.source "GameState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/game/a$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private h:Lcom/umeng/analytics/game/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "um_g_cache"

    iput-object v0, p0, Lcom/umeng/analytics/game/a;->d:Ljava/lang/String;

    .line 31
    const-string v0, "single_level"

    iput-object v0, p0, Lcom/umeng/analytics/game/a;->e:Ljava/lang/String;

    .line 32
    const-string v0, "stat_player_level"

    iput-object v0, p0, Lcom/umeng/analytics/game/a;->f:Ljava/lang/String;

    .line 33
    const-string v0, "stat_game_level"

    iput-object v0, p0, Lcom/umeng/analytics/game/a;->g:Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/game/a;->h:Lcom/umeng/analytics/game/a$a;

    .line 27
    iput-object p1, p0, Lcom/umeng/analytics/game/a;->c:Landroid/content/Context;

    .line 28
    return-void
.end method

.method public static a(Ljava/io/Serializable;)Ljava/lang/String;
    .registers 3

    .line 36
    if-nez p0, :cond_5

    .line 37
    const-string p0, ""

    return-object p0

    .line 40
    :cond_5
    :try_start_5
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 41
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 42
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 43
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 44
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/analytics/game/a;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1d} :catch_1e

    return-object p0

    .line 45
    :catch_1e
    move-exception p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a([B)Ljava/lang/String;
    .registers 4

    .line 53
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 55
    const/4 v1, 0x0

    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_22

    .line 56
    aget-byte v2, p0, v1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    add-int/lit8 v2, v2, 0x61

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 57
    aget-byte v2, p0, v1

    and-int/lit8 v2, v2, 0xf

    add-int/lit8 v2, v2, 0x61

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 60
    :cond_22
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 6

    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 65
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 66
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 67
    div-int/lit8 v3, v1, 0x2

    add-int/lit8 v2, v2, -0x61

    shl-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    .line 68
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 69
    aget-byte v4, v0, v3

    add-int/lit8 v2, v2, -0x61

    add-int/2addr v4, v2

    int-to-byte v2, v4

    aput-byte v2, v0, v3

    .line 65
    add-int/lit8 v1, v1, 0x2

    goto :goto_9

    .line 71
    :cond_2d
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 75
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 77
    :cond_8
    :try_start_8
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {p0}, Lcom/umeng/analytics/game/a;->a(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 78
    new-instance p0, Ljava/io/ObjectInputStream;

    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 79
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_1b

    return-object p0

    .line 80
    :catch_1b
    move-exception p0

    .line 83
    return-object v1
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/game/a;->h:Lcom/umeng/analytics/game/a$a;

    if-eqz v0, :cond_30

    .line 101
    invoke-virtual {v0}, Lcom/umeng/analytics/game/a$a;->b()V

    .line 103
    iget-object v0, p0, Lcom/umeng/analytics/game/a;->c:Landroid/content/Context;

    const-string v1, "um_g_cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 104
    const-string v1, "single_level"

    iget-object v2, p0, Lcom/umeng/analytics/game/a;->h:Lcom/umeng/analytics/game/a$a;

    invoke-static {v2}, Lcom/umeng/analytics/game/a;->a(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 105
    const-string v1, "stat_player_level"

    iget-object v2, p0, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 106
    const-string v1, "stat_game_level"

    iget-object v2, p0, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 107
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_30
    .catchall {:try_start_0 .. :try_end_30} :catchall_31

    .line 110
    :cond_30
    goto :goto_32

    .line 109
    :catchall_31
    move-exception v0

    .line 111
    :goto_32
    return-void
.end method

.method public b()V
    .registers 5

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/game/a;->c:Landroid/content/Context;

    const-string v1, "um_g_cache"

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getInstance(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 116
    const-string v1, "single_level"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 119
    invoke-static {v1}, Lcom/umeng/analytics/game/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/analytics/game/a$a;

    iput-object v1, p0, Lcom/umeng/analytics/game/a;->h:Lcom/umeng/analytics/game/a$a;

    .line 120
    if-eqz v1, :cond_22

    .line 121
    invoke-virtual {v1}, Lcom/umeng/analytics/game/a$a;->c()V

    .line 125
    :cond_22
    iget-object v1, p0, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 126
    const-string v1, "stat_player_level"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    .line 127
    if-nez v1, :cond_44

    .line 128
    iget-object v1, p0, Lcom/umeng/analytics/game/a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 129
    if-eqz v1, :cond_44

    .line 130
    const-string v3, "userlevel"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    .line 134
    :cond_44
    iget-object v1, p0, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    if-nez v1, :cond_52

    const-string v1, "stat_game_level"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;
    :try_end_50
    .catchall {:try_start_0 .. :try_end_50} :catchall_51

    goto :goto_52

    .line 135
    :catchall_51
    move-exception v0

    :cond_52
    :goto_52
    nop

    .line 136
    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/umeng/analytics/game/a$a;
    .registers 3

    .line 92
    new-instance v0, Lcom/umeng/analytics/game/a$a;

    invoke-direct {v0, p1}, Lcom/umeng/analytics/game/a$a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/analytics/game/a;->h:Lcom/umeng/analytics/game/a$a;

    .line 93
    invoke-virtual {v0}, Lcom/umeng/analytics/game/a$a;->a()V

    .line 95
    iget-object p1, p0, Lcom/umeng/analytics/game/a;->h:Lcom/umeng/analytics/game/a$a;

    return-object p1
.end method

.method public d(Ljava/lang/String;)Lcom/umeng/analytics/game/a$a;
    .registers 4

    .line 139
    nop

    .line 141
    iget-object v0, p0, Lcom/umeng/analytics/game/a;->h:Lcom/umeng/analytics/game/a$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 142
    invoke-virtual {v0}, Lcom/umeng/analytics/game/a$a;->d()V

    .line 143
    iget-object v0, p0, Lcom/umeng/analytics/game/a;->h:Lcom/umeng/analytics/game/a$a;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/game/a$a;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 144
    iget-object p1, p0, Lcom/umeng/analytics/game/a;->h:Lcom/umeng/analytics/game/a$a;

    .line 145
    iput-object v1, p0, Lcom/umeng/analytics/game/a;->h:Lcom/umeng/analytics/game/a$a;

    move-object v1, p1

    .line 149
    :cond_16
    return-object v1
.end method
