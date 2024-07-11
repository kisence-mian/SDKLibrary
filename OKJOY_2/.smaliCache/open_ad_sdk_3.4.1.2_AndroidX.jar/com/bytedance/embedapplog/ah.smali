.class Lcom/bytedance/embedapplog/ah;
.super Lcom/bytedance/embedapplog/u;
.source "SourceFile"


# instance fields
.field private final e:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/bytedance/embedapplog/u;-><init>(ZZ)V

    .line 25
    iput-object p1, p0, Lcom/bytedance/embedapplog/ah;->e:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Z
    .registers 9

    .line 30
    nop

    .line 32
    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/bytedance/embedapplog/ah;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_f

    .line 35
    goto :goto_16

    .line 33
    :catch_f
    move-exception v1

    .line 34
    const-string v2, ""

    invoke-static {v2, v1}, Lcom/bytedance/embedapplog/bo;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    .line 36
    :goto_16
    invoke-static {v1}, Lcom/bytedance/embedapplog/aa;->d(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "openudid"

    if-eqz v2, :cond_27

    const-string v2, "9774d56d682e549c"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 38
    :cond_27
    iget-object v1, p0, Lcom/bytedance/embedapplog/ah;->e:Landroid/content/Context;

    const-string v2, "snssdk_openudid"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 39
    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/bytedance/embedapplog/aa;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8a

    .line 41
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 42
    new-instance v2, Ljava/math/BigInteger;

    const/16 v6, 0x40

    invoke-direct {v2, v6, v0}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x2d

    if-ne v2, v5, :cond_58

    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 46
    :cond_58
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0xd

    .line 47
    if-lez v2, :cond_76

    .line 48
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    :goto_65
    if-lez v2, :cond_6f

    .line 50
    const/16 v6, 0x46

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    add-int/lit8 v2, v2, -0x1

    goto :goto_65

    .line 53
    :cond_6f
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    :cond_76
    :try_start_76
    const-string v2, "openudid.dat"

    invoke-virtual {p0, v2, v0}, Lcom/bytedance/embedapplog/ah;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_7c} :catch_7d

    .line 59
    goto :goto_7e

    .line 58
    :catch_7d
    move-exception v2

    .line 61
    :goto_7e
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 62
    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object v1, v0

    goto :goto_8b

    .line 40
    :cond_8a
    move-object v1, v0

    .line 66
    :cond_8b
    :goto_8b
    invoke-virtual {p1, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    return v3
.end method
