.class Lcom/ss/android/downloadlib/addownload/d/a$1;
.super Ljava/lang/Object;
.source "ApkSizeInterceptor.java"

# interfaces
.implements Lcom/ss/android/downloadlib/addownload/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/d/a;->a(Lcom/ss/android/downloadad/a/b/b;ILcom/ss/android/downloadlib/addownload/d/c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadad/a/b/b;

.field final synthetic b:Lcom/ss/android/downloadlib/addownload/d/c;

.field final synthetic c:Lcom/ss/android/downloadlib/addownload/d/a;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/addownload/d/a;Lcom/ss/android/downloadad/a/b/b;Lcom/ss/android/downloadlib/addownload/d/c;)V
    .registers 4

    .line 61
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/d/a$1;->c:Lcom/ss/android/downloadlib/addownload/d/a;

    iput-object p2, p0, Lcom/ss/android/downloadlib/addownload/d/a$1;->a:Lcom/ss/android/downloadad/a/b/b;

    iput-object p3, p0, Lcom/ss/android/downloadlib/addownload/d/a$1;->b:Lcom/ss/android/downloadlib/addownload/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .line 64
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/d/a;->a(Lcom/ss/android/downloadlib/addownload/a/c;)Lcom/ss/android/downloadlib/addownload/a/c;

    .line 65
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 67
    :try_start_9
    const-string v1, "pause_optimise_type"

    const-string v2, "apk_size"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string v1, "pause_optimise_action"

    const-string v2, "confirm"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_17} :catch_18

    .line 71
    goto :goto_1c

    .line 69
    :catch_18
    move-exception v1

    .line 70
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 72
    :goto_1c
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/d/a$1;->a:Lcom/ss/android/downloadad/a/b/b;

    const-string v3, "pause_optimise"

    invoke-virtual {v1, v3, v0, v2}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 74
    return-void
.end method

.method public b()V
    .registers 5

    .line 78
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/d/a;->a(Lcom/ss/android/downloadlib/addownload/a/c;)Lcom/ss/android/downloadlib/addownload/a/c;

    .line 79
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 81
    :try_start_9
    const-string v1, "pause_optimise_type"

    const-string v2, "apk_size"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v1, "pause_optimise_action"

    const-string v2, "cancel"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_17} :catch_18

    .line 85
    goto :goto_1c

    .line 83
    :catch_18
    move-exception v1

    .line 84
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 86
    :goto_1c
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/d/a$1;->a:Lcom/ss/android/downloadad/a/b/b;

    const-string v3, "pause_optimise"

    invoke-virtual {v1, v3, v0, v2}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 87
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/d/a$1;->b:Lcom/ss/android/downloadlib/addownload/d/c;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/d/a$1;->a:Lcom/ss/android/downloadad/a/b/b;

    invoke-interface {v0, v1}, Lcom/ss/android/downloadlib/addownload/d/c;->a(Lcom/ss/android/downloadad/a/b/b;)V

    .line 88
    return-void
.end method
