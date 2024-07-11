.class final Lcom/ss/android/downloadlib/h/h$1;
.super Ljava/lang/Object;
.source "OpenAppUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/h/h;->b(Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/b/e;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ss/android/downloadlib/addownload/b/e;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/b/e;)V
    .registers 4

    .line 154
    iput-object p1, p0, Lcom/ss/android/downloadlib/h/h$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/ss/android/downloadlib/h/h$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/android/downloadlib/h/h$1;->c:Lcom/ss/android/downloadlib/addownload/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 157
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object v0

    .line 158
    const-string v1, "s"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 163
    const-string v3, "x"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/ss/android/socialbase/appdownloader/f/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 164
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->e()Lcom/ss/android/a/a/a/g;

    move-result-object v3

    if-nez v3, :cond_5d

    .line 165
    iget-object v0, p0, Lcom/ss/android/downloadlib/h/h$1;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/ss/android/downloadlib/h/h$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/h/h;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/ss/android/downloadlib/addownload/b/g;

    .line 166
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "error_code"

    invoke-static {v2, v1, v0}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ttdownloader_type"

    invoke-static {v2, v1, v0}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/h/h$1;->c:Lcom/ss/android/downloadlib/addownload/b/e;

    const-string v3, "am_result"

    invoke-virtual {v0, v3, v2, v1}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 169
    return-void

    .line 171
    :cond_5d
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 172
    iget-object v4, p0, Lcom/ss/android/downloadlib/h/h$1;->b:Ljava/lang/String;

    const-string v6, "p"

    invoke-static {v3, v6, v4}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v6, "i"

    invoke-static {v3, v6, v4}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "m"

    invoke-static {v3, v6, v4}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    iget-object v4, p0, Lcom/ss/android/downloadlib/h/h$1;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/ss/android/downloadlib/a/b/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "im"

    invoke-static {v3, v7, v4}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    iget-object v4, p0, Lcom/ss/android/downloadlib/h/h$1;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/ss/android/downloadlib/a/b/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "d"

    invoke-static {v3, v7, v4}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    const-string v4, "t"

    invoke-static {v3, v4, v6}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 180
    array-length v4, v3

    invoke-static {v3, v4}, Lcom/bytedance/frameworks/encryptor/EncryptorUtil;->a([BI)[B

    move-result-object v6

    .line 182
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->e()Lcom/ss/android/a/a/a/g;

    move-result-object v4

    const/4 v8, 0x0

    new-instance v9, Lcom/ss/android/downloadlib/h/h$1$1;

    invoke-direct {v9, p0, v2, v0, v1}, Lcom/ss/android/downloadlib/h/h$1$1;-><init>(Lcom/ss/android/downloadlib/h/h$1;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v7, "application/octet-stream;tt-data=a"

    invoke-interface/range {v4 .. v9}, Lcom/ss/android/a/a/a/g;->a(Ljava/lang/String;[BLjava/lang/String;ILcom/ss/android/a/a/a/p;)V

    .line 199
    return-void
.end method
