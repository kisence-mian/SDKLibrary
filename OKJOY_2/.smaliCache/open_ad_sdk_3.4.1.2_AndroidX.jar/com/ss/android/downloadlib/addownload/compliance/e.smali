.class Lcom/ss/android/downloadlib/addownload/compliance/e;
.super Ljava/lang/Object;
.source "EventSender.java"


# direct methods
.method public static a(IJ)V
    .registers 5

    .line 51
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 53
    :try_start_5
    const-string v1, "error_code"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_f

    .line 56
    goto :goto_13

    .line 54
    :catch_f
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    :goto_13
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p0

    .line 58
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/ss/android/downloadlib/addownload/b/f;->e(J)Lcom/ss/android/downloadlib/addownload/b/e;

    move-result-object p1

    .line 57
    const-string p2, "lp_compliance_error"

    invoke-virtual {p0, p2, v0, p1}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 59
    return-void
.end method

.method public static a(ILcom/ss/android/downloadlib/addownload/b/e;)V
    .registers 4

    .line 41
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 43
    :try_start_5
    const-string v1, "error_code"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_f

    .line 46
    goto :goto_13

    .line 44
    :catch_f
    move-exception p0

    .line 45
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    :goto_13
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p0

    const-string v1, "lp_compliance_error"

    invoke-virtual {p0, v1, v0, p1}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 48
    return-void
.end method

.method public static a(Ljava/lang/String;J)V
    .registers 4

    .line 17
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/downloadlib/addownload/b/f;->e(J)Lcom/ss/android/downloadlib/addownload/b/e;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/ss/android/downloadlib/addownload/b/e;->w()Z

    move-result p2

    if-nez p2, :cond_1c

    .line 19
    iget-object p2, p1, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/a/a/b/b;

    invoke-interface {p2, p0}, Lcom/ss/android/a/a/b/b;->a(Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p0

    const-string p2, "lp_app_dialog_click"

    invoke-virtual {p0, p2, p1}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V

    .line 22
    :cond_1c
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/b/e;)V
    .registers 3

    .line 33
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V

    .line 34
    return-void
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;J)V
    .registers 6

    .line 29
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/ss/android/downloadlib/addownload/b/f;->e(J)Lcom/ss/android/downloadlib/addownload/b/e;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 30
    return-void
.end method

.method public static b(Ljava/lang/String;J)V
    .registers 4

    .line 25
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/ss/android/downloadlib/addownload/compliance/e;->a(Ljava/lang/String;Lorg/json/JSONObject;J)V

    .line 26
    return-void
.end method
