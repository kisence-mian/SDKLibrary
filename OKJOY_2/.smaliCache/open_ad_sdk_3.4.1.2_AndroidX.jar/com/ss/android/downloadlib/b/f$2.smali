.class final Lcom/ss/android/downloadlib/b/f$2;
.super Ljava/lang/Object;
.source "AppLinkOptimiseHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/b/f;->b(Lcom/ss/android/downloadad/a/b/b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadad/a/b/b;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/ss/android/downloadad/a/b/b;I)V
    .registers 3

    .line 112
    iput-object p1, p0, Lcom/ss/android/downloadlib/b/f$2;->a:Lcom/ss/android/downloadad/a/b/b;

    iput p2, p0, Lcom/ss/android/downloadlib/b/f$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 115
    iget-object v0, p0, Lcom/ss/android/downloadlib/b/f$2;->a:Lcom/ss/android/downloadad/a/b/b;

    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/h/k;->c(Ljava/lang/String;)Z

    move-result v0

    .line 116
    const/4 v1, 0x1

    if-eqz v0, :cond_36

    .line 117
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 119
    :try_start_12
    const-string v2, "deeplink_source"

    iget-object v3, p0, Lcom/ss/android/downloadlib/b/f$2;->a:Lcom/ss/android/downloadad/a/b/b;

    invoke-virtual {v3}, Lcom/ss/android/downloadad/a/b/b;->Z()Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x2

    :goto_1e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_25} :catch_26

    .line 122
    goto :goto_2a

    .line 120
    :catch_26
    move-exception v1

    .line 121
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 123
    :goto_2a
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/b/f$2;->a:Lcom/ss/android/downloadad/a/b/b;

    const-string v3, "deeplink_success_2"

    invoke-virtual {v1, v3, v0, v2}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/b;)V

    .line 124
    goto :goto_3e

    .line 125
    :cond_36
    iget v0, p0, Lcom/ss/android/downloadlib/b/f$2;->b:I

    sub-int/2addr v0, v1

    .line 126
    iget-object v1, p0, Lcom/ss/android/downloadlib/b/f$2;->a:Lcom/ss/android/downloadad/a/b/b;

    invoke-static {v1, v0}, Lcom/ss/android/downloadlib/b/f;->a(Lcom/ss/android/downloadad/a/b/b;I)V

    .line 128
    :goto_3e
    return-void
.end method
