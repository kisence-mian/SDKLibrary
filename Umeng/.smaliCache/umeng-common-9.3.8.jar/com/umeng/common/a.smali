.class public Lcom/umeng/common/a;
.super Ljava/lang/Object;
.source "EncryptHelper.java"


# static fields
.field private static a:Ljava/lang/String; = null

.field private static final b:Ljava/lang/String; = "umeng+"

.field private static final c:Ljava/lang/String; = "ek__id"

.field private static final d:Ljava/lang/String; = "ek_key"

.field private static e:Ljava/lang/String; = null

.field private static final f:Ljava/lang/String; = "umeng_subprocess_info"

.field private static g:Ljava/lang/String;

.field private static h:Lcom/umeng/common/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/common/a;->a:Ljava/lang/String;

    .line 32
    const-string v0, ""

    sput-object v0, Lcom/umeng/common/a;->e:Ljava/lang/String;

    .line 37
    sput-object v0, Lcom/umeng/common/a;->g:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/umeng/common/a;
    .registers 2

    .line 44
    sget-object v0, Lcom/umeng/common/a;->h:Lcom/umeng/common/a;

    if-nez v0, :cond_17

    .line 45
    const-class v0, Lcom/umeng/common/a;

    monitor-enter v0

    .line 46
    :try_start_7
    sget-object v1, Lcom/umeng/common/a;->h:Lcom/umeng/common/a;

    if-nez v1, :cond_12

    .line 47
    new-instance v1, Lcom/umeng/common/a;

    invoke-direct {v1}, Lcom/umeng/common/a;-><init>()V

    sput-object v1, Lcom/umeng/common/a;->h:Lcom/umeng/common/a;

    .line 49
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 52
    :cond_17
    :goto_17
    sget-object v0, Lcom/umeng/common/a;->h:Lcom/umeng/common/a;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 56
    const-string v0, ""

    .line 58
    const/16 v1, 0x9

    const/4 v2, 0x1

    :try_start_5
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_42

    .line 62
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 63
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 64
    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2e

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 67
    :cond_2e
    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    rsub-int/lit8 v4, v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 70
    :cond_3c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    :goto_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 73
    :cond_42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_64
    .catchall {:try_start_5 .. :try_end_64} :catchall_65

    .line 77
    goto :goto_67

    .line 75
    :catchall_65
    move-exception p1

    move-object p1, v0

    .line 78
    :goto_67
    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 120
    nop

    .line 122
    :try_start_1
    sget-object v0, Lcom/umeng/common/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 123
    goto :goto_1d

    .line 125
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    sget-object v0, Lcom/umeng/common/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->encrypt([B[B)[B

    move-result-object p1

    .line 126
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_1e

    .line 129
    :goto_1d
    goto :goto_20

    .line 128
    :catch_1e
    move-exception p1

    const/4 p1, 0x0

    .line 130
    :goto_20
    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .registers 6

    .line 87
    const-string v0, "ek__id"

    :try_start_2
    sget-object v1, Lcom/umeng/common/a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 89
    invoke-static {p1, v0}, Lcom/umeng/commonsdk/utils/UMUtils;->getMultiProcessSP(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_84

    const-string v3, "MobclickRT"

    if-nez v2, :cond_34

    .line 91
    :try_start_16
    invoke-direct {p0, v1}, Lcom/umeng/common/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/umeng/common/a;->e:Ljava/lang/String;

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>>> primaryKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/umeng/common/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_34
    nop

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "umeng_subprocess_info"

    const/4 v2, 0x0

    .line 98
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 100
    if-eqz p1, :cond_61

    .line 101
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/umeng/common/a;->g:Ljava/lang/String;

    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "--->>> \u5b50\u8fdb\u7a0b\u5907\u4efd\u79d8\u94a5\uff1a\u4e3b\u8fdb\u7a0bkey: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Lcom/umeng/common/a;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_61
    invoke-static {}, Lcom/umeng/commonsdk/utils/UMUtils;->genId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/umeng/common/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/umeng/common/a;->a:Ljava/lang/String;

    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "--->>>> \u6b63\u5f0f\u79d8\u94a5\uff1akey: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Lcom/umeng/common/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_83
    .catchall {:try_start_16 .. :try_end_83} :catchall_84

    .line 110
    :cond_83
    goto :goto_85

    .line 109
    :catchall_84
    move-exception p1

    .line 111
    :goto_85
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 140
    nop

    .line 142
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_3
    sget-object v2, Lcom/umeng/common/a;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 143
    goto :goto_24

    .line 145
    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v2

    .line 146
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/umeng/common/a;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v2, v4}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->decrypt([B[B)[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_23} :catch_26

    move-object p1, v3

    .line 171
    :goto_24
    move-object v1, p1

    goto :goto_89

    .line 148
    :catch_26
    move-exception v2

    .line 150
    const-string v2, "MobclickRT"

    const-string v3, "--->>> \u5b50\u8fdb\u7a0b\u4e8b\u4ef6\u6570\u636e\u89e3\u5bc6\u5931\u8d25!"

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    sget-object v3, Lcom/umeng/common/a;->e:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_89

    .line 152
    const-string v3, "--->>> \u5b50\u8fdb\u7a0b\u4e8b\u4ef6\u6570\u636e\u89e3\u5bc6\u5931\u8d25\uff0c\u6362\u8001\u79d8\u94a5\u91cd\u8bd5"

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :try_start_3b
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v3

    .line 155
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/umeng/common/a;->e:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v3, v5}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->decrypt([B[B)[B

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_52} :catch_5c

    .line 156
    :try_start_52
    const-string v1, "--->>> \u5b50\u8fdb\u7a0b\u4e8b\u4ef6\u6570\u636e\u89e3\u5bc6\u5931\u8d25\uff0c\u6362\u8001\u79d8\u94a5\u91cd\u8bd5\u6210\u529f\u3002"

    invoke-static {v2, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_57} :catch_59

    .line 168
    move-object v1, v4

    goto :goto_89

    .line 157
    :catch_59
    move-exception v1

    move-object v1, v4

    goto :goto_5d

    :catch_5c
    move-exception v3

    .line 159
    :goto_5d
    const-string v3, "--->>> \u5b50\u8fdb\u7a0b\u4e8b\u4ef6\u6570\u636e\u89e3\u5bc6\u5931\u8d25\uff0c\u6362\u8001\u79d8\u94a5\u91cd\u8bd5\u5931\u8d25\u3002\u6362\u5b50\u8fdb\u7a0b\u5907\u4efdkey\u91cd\u8bd5\u3002"

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :try_start_62
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    .line 162
    new-instance v0, Ljava/lang/String;

    sget-object v3, Lcom/umeng/common/a;->g:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {p1, v3}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->decrypt([B[B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_79
    .catchall {:try_start_62 .. :try_end_79} :catchall_83

    .line 163
    :try_start_79
    const-string p1, "--->>> \u5b50\u8fdb\u7a0b\u4e8b\u4ef6\u6570\u636e\u89e3\u5bc6\u5931\u8d25\uff0c\u5b50\u8fdb\u7a0b\u5907\u4efdkey\u91cd\u8bd5\u6210\u529f\u3002"

    invoke-static {v2, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7e
    .catchall {:try_start_79 .. :try_end_7e} :catchall_80

    .line 166
    move-object v1, v0

    goto :goto_89

    .line 164
    :catchall_80
    move-exception p1

    move-object v1, v0

    goto :goto_84

    :catchall_83
    move-exception p1

    .line 165
    :goto_84
    const-string p1, "--->>> \u5b50\u8fdb\u7a0b\u4e8b\u4ef6\u6570\u636e\u89e3\u5bc6\u5931\u8d25\uff0c\u5b50\u8fdb\u7a0b\u5907\u4efdkey\u91cd\u8bd5\u5931\u8d25\u3002"

    invoke-static {v2, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_89
    :goto_89
    return-object v1
.end method
