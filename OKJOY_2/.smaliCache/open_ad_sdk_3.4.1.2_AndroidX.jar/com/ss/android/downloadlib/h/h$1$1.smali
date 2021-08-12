.class Lcom/ss/android/downloadlib/h/h$1$1;
.super Ljava/lang/Object;
.source "OpenAppUtils.java"

# interfaces
.implements Lcom/ss/android/a/a/a/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/h/h$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/ss/android/downloadlib/h/h$1;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/h/h$1;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 5

    .line 185
    iput-object p1, p0, Lcom/ss/android/downloadlib/h/h$1$1;->d:Lcom/ss/android/downloadlib/h/h$1;

    iput-object p2, p0, Lcom/ss/android/downloadlib/h/h$1$1;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/ss/android/downloadlib/h/h$1$1;->b:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/ss/android/downloadlib/h/h$1$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 11

    .line 188
    iget-object v0, p0, Lcom/ss/android/downloadlib/h/h$1$1;->d:Lcom/ss/android/downloadlib/h/h$1;

    iget-object v1, v0, Lcom/ss/android/downloadlib/h/h$1;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/ss/android/downloadlib/h/h$1$1;->d:Lcom/ss/android/downloadlib/h/h$1;

    iget-object v2, v0, Lcom/ss/android/downloadlib/h/h$1;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/ss/android/downloadlib/h/h$1$1;->d:Lcom/ss/android/downloadlib/h/h$1;

    iget-object v4, v0, Lcom/ss/android/downloadlib/h/h$1;->c:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v6, p0, Lcom/ss/android/downloadlib/h/h$1$1;->a:Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/ss/android/downloadlib/h/h$1$1;->b:Lorg/json/JSONObject;

    iget-object v8, p0, Lcom/ss/android/downloadlib/h/h$1$1;->c:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v3, p1

    invoke-static/range {v1 .. v8}, Lcom/ss/android/downloadlib/h/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/b/e;ZLorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 5

    .line 193
    iget-object p1, p0, Lcom/ss/android/downloadlib/h/h$1$1;->d:Lcom/ss/android/downloadlib/h/h$1;

    iget-object p1, p1, Lcom/ss/android/downloadlib/h/h$1;->a:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/h/h$1$1;->d:Lcom/ss/android/downloadlib/h/h$1;

    iget-object v1, v1, Lcom/ss/android/downloadlib/h/h$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ss/android/downloadlib/h/h;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/ss/android/downloadlib/addownload/b/g;

    .line 194
    iget-object p1, p0, Lcom/ss/android/downloadlib/h/h$1$1;->a:Lorg/json/JSONObject;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "error_code"

    invoke-static {p1, v1, v0}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    iget-object p1, p0, Lcom/ss/android/downloadlib/h/h$1$1;->a:Lorg/json/JSONObject;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ttdownloader_type"

    invoke-static {p1, v1, v0}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/downloadlib/h/h$1$1;->a:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ss/android/downloadlib/h/h$1$1;->d:Lcom/ss/android/downloadlib/h/h$1;

    iget-object v1, v1, Lcom/ss/android/downloadlib/h/h$1;->c:Lcom/ss/android/downloadlib/addownload/b/e;

    const-string v2, "am_result"

    invoke-virtual {p1, v2, v0, v1}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 197
    return-void
.end method
