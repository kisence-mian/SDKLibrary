.class public Lcom/ss/android/downloadlib/h/j;
.super Ljava/lang/Object;
.source "TLogger.java"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    .line 25
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->p()Lcom/ss/android/a/a/a/j;

    move-result-object v0

    .line 26
    if-eqz v0, :cond_a

    .line 27
    const/4 v1, 0x2

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/ss/android/a/a/a/j;->a(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 29
    :cond_a
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    .line 43
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->p()Lcom/ss/android/a/a/a/j;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_a

    .line 45
    const/4 v1, 0x3

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/ss/android/a/a/a/j;->a(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 47
    :cond_a
    return-void
.end method
