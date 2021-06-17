.class public final Lcom/tapjoy/internal/gw;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 22
    const/4 v0, 0x0

    if-eqz p0, :cond_19

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_19

    .line 25
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 26
    if-eqz p0, :cond_18

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_17

    goto :goto_18

    :cond_17
    return-object p0

    :cond_18
    :goto_18
    return-object v0

    .line 23
    :cond_19
    :goto_19
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 52
    const/4 v0, 0x0

    if-nez p0, :cond_9

    .line 53
    const-string p0, "must not be null"

    invoke-static {p1, p2, p0}, Lcom/tapjoy/internal/gy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-object v0

    .line 56
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_15

    .line 57
    const-string p0, "must not be empty"

    invoke-static {p1, p2, p0}, Lcom/tapjoy/internal/gy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-object v0

    .line 60
    :cond_15
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_25

    .line 62
    const-string p0, "must not be blank"

    invoke-static {p1, p2, p0}, Lcom/tapjoy/internal/gy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-object v0

    .line 65
    :cond_25
    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 36
    const/4 v0, 0x0

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_16

    .line 39
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_15

    .line 41
    return-object v0

    .line 43
    :cond_15
    return-object p0

    .line 37
    :cond_16
    :goto_16
    return-object v0
.end method
