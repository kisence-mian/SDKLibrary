.class final Lcom/ss/android/downloadlib/b/a$1;
.super Ljava/lang/Object;
.source "AdAppLinkUtils.java"

# interfaces
.implements Lcom/ss/android/downloadlib/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/b/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/ss/android/downloadad/a/b/a;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V
    .registers 3

    .line 244
    iput-object p1, p0, Lcom/ss/android/downloadlib/b/a$1;->a:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/ss/android/downloadlib/b/a$1;->b:Lcom/ss/android/downloadad/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 5

    .line 247
    if-eqz p1, :cond_10

    .line 248
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/downloadlib/b/a$1;->a:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ss/android/downloadlib/b/a$1;->b:Lcom/ss/android/downloadad/a/b/a;

    const-string v2, "deeplink_success"

    invoke-virtual {p1, v2, v0, v1}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    goto :goto_1d

    .line 251
    :cond_10
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/downloadlib/b/a$1;->a:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ss/android/downloadlib/b/a$1;->b:Lcom/ss/android/downloadad/a/b/a;

    const-string v2, "deeplink_failed"

    invoke-virtual {p1, v2, v0, v1}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 254
    :goto_1d
    return-void
.end method
