.class public Lcom/JoyFramework/d/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/lang/String; = "device_id.xml"

.field protected static final b:Ljava/lang/String; = "device_id"


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Landroid/content/Context;

.field private p:Ljava/lang/String;

.field private q:Lcom/JoyFramework/d/ca;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/JoyFramework/d/d;->d:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/JoyFramework/d/d;->e:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/JoyFramework/d/d;->f:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/JoyFramework/d/d;->g:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/JoyFramework/d/d;->h:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/JoyFramework/d/d;->l:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/d/d;->o:Landroid/content/Context;

    .line 50
    iget-object v0, p0, Lcom/JoyFramework/d/d;->o:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/JoyFramework/d/d;->a(Landroid/content/Context;)V

    .line 51
    iget-object v0, p0, Lcom/JoyFramework/d/d;->q:Lcom/JoyFramework/d/ca;

    if-nez v0, :cond_35

    .line 52
    iget-object v0, p0, Lcom/JoyFramework/d/d;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/JoyFramework/d/ca;->a(Landroid/content/Context;)Lcom/JoyFramework/d/ca;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/d/d;->q:Lcom/JoyFramework/d/ca;

    .line 53
    :cond_35
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 57
    :try_start_0
    const-string v1, "phone"

    .line 58
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 61
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v2

    iget-object v2, v2, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    const-string v3, "android.permission.READ_PHONE_STATE"

    .line 60
    invoke-static {v2, v3}, Lcom/JoyFramework/d/ba;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    .line 62
    if-eqz v2, :cond_46

    .line 66
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v2

    iget-object v2, v2, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    invoke-static {v2}, Lcom/JoyFramework/d/ba;->b(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_46

    .line 67
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/JoyFramework/d/d;->c:Ljava/lang/String;

    .line 68
    iget-object v2, p0, Lcom/JoyFramework/d/d;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 69
    const-string v2, "+0000"

    iput-object v2, p0, Lcom/JoyFramework/d/d;->c:Ljava/lang/String;

    .line 71
    :cond_34
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/JoyFramework/d/d;->e:Ljava/lang/String;

    .line 72
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/JoyFramework/d/d;->d:Ljava/lang/String;

    .line 73
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/JoyFramework/d/d;->l:Ljava/lang/String;

    .line 77
    :cond_46
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, p0, Lcom/JoyFramework/d/d;->i:Ljava/lang/String;

    .line 78
    const-string v1, ""

    iput-object v1, p0, Lcom/JoyFramework/d/d;->j:Ljava/lang/String;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_105

    .line 80
    :try_start_4e
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/JoyFramework/d/d;->j:Ljava/lang/String;
    :try_end_58
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4e .. :try_end_58} :catch_ff
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_58} :catch_105

    .line 84
    :goto_58
    :try_start_58
    const-string v1, "unKnow"

    iput-object v1, p0, Lcom/JoyFramework/d/d;->n:Ljava/lang/String;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5c} :catch_105

    .line 86
    :try_start_5c
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v1, p0, Lcom/JoyFramework/d/d;->n:Ljava/lang/String;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_60} :catch_10a

    .line 90
    :goto_60
    :try_start_60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/JoyFramework/d/d;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/d/d;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/d/d;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/JoyFramework/d/d;->g:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/JoyFramework/d/d;->f:Ljava/lang/String;

    .line 94
    iget-object v1, p0, Lcom/JoyFramework/d/d;->h:Ljava/lang/String;

    if-nez v1, :cond_bd

    .line 98
    iget-object v1, p0, Lcom/JoyFramework/d/d;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_9e} :catch_105

    move-result v1

    if-eqz v1, :cond_bd

    .line 102
    :try_start_a1
    const-string v1, "9774d56d682e549c"

    iget-object v2, p0, Lcom/JoyFramework/d/d;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_111

    .line 103
    iget-object v1, p0, Lcom/JoyFramework/d/d;->f:Ljava/lang/String;

    const-string v2, "utf8"

    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 103
    invoke-static {v1}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/JoyFramework/d/d;->h:Ljava/lang/String;
    :try_end_bd
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a1 .. :try_end_bd} :catch_128
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_bd} :catch_105

    .line 119
    :cond_bd
    :goto_bd
    :try_start_bd
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 120
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_d5

    .line 121
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 123
    :cond_d5
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 124
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "*"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/JoyFramework/d/d;->k:Ljava/lang/String;

    .line 126
    invoke-static {p1}, Lcom/JoyFramework/d/ar;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/JoyFramework/d/d;->p:Ljava/lang/String;

    .line 127
    invoke-static {p1}, Lcom/JoyFramework/d/ar;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/JoyFramework/d/d;->m:Ljava/lang/String;

    .line 131
    :goto_fe
    return-void

    .line 81
    :catch_ff
    move-exception v1

    .line 82
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_103} :catch_105

    goto/16 :goto_58

    .line 128
    :catch_105
    move-exception v1

    .line 129
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_fe

    .line 87
    :catch_10a
    move-exception v1

    .line 88
    :try_start_10b
    const-string v1, "unKnow"

    iput-object v1, p0, Lcom/JoyFramework/d/d;->n:Ljava/lang/String;
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_10f} :catch_105

    goto/16 :goto_60

    .line 107
    :cond_111
    :try_start_111
    iget-object v1, p0, Lcom/JoyFramework/d/d;->e:Ljava/lang/String;

    if-eqz v1, :cond_12f

    iget-object v1, p0, Lcom/JoyFramework/d/d;->e:Ljava/lang/String;

    const-string v2, "utf8"

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 107
    invoke-static {v1}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v1

    .line 108
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    :goto_125
    iput-object v1, p0, Lcom/JoyFramework/d/d;->h:Ljava/lang/String;
    :try_end_127
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_111 .. :try_end_127} :catch_128
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_127} :catch_105

    goto :goto_bd

    .line 111
    :catch_128
    move-exception v1

    .line 112
    :try_start_129
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_129 .. :try_end_12f} :catch_105

    .line 109
    :cond_12f
    :try_start_12f
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;
    :try_end_136
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_12f .. :try_end_136} :catch_128
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_136} :catch_105

    move-result-object v1

    goto :goto_125
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/JoyFramework/d/d;->o:Landroid/content/Context;

    if-eqz v0, :cond_c

    .line 135
    iget-object v0, p0, Lcom/JoyFramework/d/d;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/JoyFramework/d/ar;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/d/d;->m:Ljava/lang/String;

    .line 137
    :cond_c
    iget-object v0, p0, Lcom/JoyFramework/d/d;->m:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/JoyFramework/d/d;->l:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/JoyFramework/d/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/JoyFramework/d/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/JoyFramework/d/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/JoyFramework/d/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/JoyFramework/d/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/JoyFramework/d/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/JoyFramework/d/d;->i:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/JoyFramework/d/d;->j:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/JoyFramework/d/d;->k:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/JoyFramework/d/d;->o:Landroid/content/Context;

    if-eqz v0, :cond_c

    .line 182
    iget-object v0, p0, Lcom/JoyFramework/d/d;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/JoyFramework/d/ar;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/d/d;->p:Ljava/lang/String;

    .line 184
    :cond_c
    iget-object v0, p0, Lcom/JoyFramework/d/d;->p:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/JoyFramework/d/d;->q:Lcom/JoyFramework/d/ca;

    invoke-virtual {v0}, Lcom/JoyFramework/d/ca;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .registers 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/JoyFramework/d/d;->q:Lcom/JoyFramework/d/ca;

    invoke-virtual {v0}, Lcom/JoyFramework/d/ca;->b()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v0, p0, Lcom/JoyFramework/d/d;->q:Lcom/JoyFramework/d/ca;

    invoke-virtual {v0}, Lcom/JoyFramework/d/ca;->a()Ljava/lang/String;

    move-result-object v0

    :cond_12
    return-object v0
.end method
