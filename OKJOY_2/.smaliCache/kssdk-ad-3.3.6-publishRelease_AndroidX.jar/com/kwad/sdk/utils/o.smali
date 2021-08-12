.class public final Lcom/kwad/sdk/utils/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/utils/o$a;
    }
.end annotation


# direct methods
.method private static a(I)Ljava/lang/String;
    .registers 2

    const/4 v0, -0x1

    if-le p0, v0, :cond_8

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_a

    :cond_8
    const-string p0, "-999"

    :goto_a
    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/kwad/sdk/utils/o$a;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    invoke-static {p0, p1}, Lcom/kwad/sdk/utils/o;->b(Ljava/lang/String;Lcom/kwad/sdk/utils/o$a;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/utils/ac;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string v0, "__MAC__"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/kwad/sdk/utils/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "__MAC2__"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ":"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/utils/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "__MAC3__"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_3f
    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/utils/ac;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6b

    const-string v0, "__IMEI__"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/kwad/sdk/utils/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "__IMEI2__"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/kwad/sdk/utils/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "__IMEI3__"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_6b
    invoke-static {}, Lcom/kwad/sdk/core/f/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_85

    const-string v0, "__OAID__"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/kwad/sdk/utils/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "__OAID2__"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_85
    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/utils/ac;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b1

    invoke-static {p1}, Lcom/kwad/sdk/utils/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "__ANDROIDID2__"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/kwad/sdk/utils/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "__ANDROIDID3__"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "__ANDROIDID__"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_b1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v0, "__TS__"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Lcom/kwad/sdk/utils/o$a;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5d

    if-nez p1, :cond_9

    goto :goto_5d

    :cond_9
    invoke-virtual {p1}, Lcom/kwad/sdk/utils/o$a;->a()I

    move-result v0

    invoke-static {v0}, Lcom/kwad/sdk/utils/o;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "__WIDTH__"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/kwad/sdk/utils/o$a;->b()I

    move-result v0

    invoke-static {v0}, Lcom/kwad/sdk/utils/o;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "__HEIGHT__"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/kwad/sdk/utils/o$a;->c()I

    move-result v0

    invoke-static {v0}, Lcom/kwad/sdk/utils/o;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "__DOWN_X__"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/kwad/sdk/utils/o$a;->d()I

    move-result v0

    invoke-static {v0}, Lcom/kwad/sdk/utils/o;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "__DOWN_Y__"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/kwad/sdk/utils/o$a;->e()I

    move-result v0

    invoke-static {v0}, Lcom/kwad/sdk/utils/o;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "__UP_X__"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/kwad/sdk/utils/o$a;->f()I

    move-result p1

    invoke-static {p1}, Lcom/kwad/sdk/utils/o;->a(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "__UP_Y__"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_5d
    :goto_5d
    return-object p0
.end method
