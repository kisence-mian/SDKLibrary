.class final Lcom/bytedance/embedapplog/bb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Landroid/content/Context;)Landroid/app/Activity;
    .registers 3

    .line 16
    instance-of v0, p0, Landroid/content/ContextWrapper;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 17
    return-object v1

    .line 21
    :cond_6
    check-cast p0, Landroid/content/ContextWrapper;

    :goto_8
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_18

    .line 23
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .line 24
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-nez v0, :cond_15

    .line 25
    return-object v1

    .line 22
    :cond_15
    check-cast p0, Landroid/content/ContextWrapper;

    goto :goto_8

    .line 29
    :cond_18
    check-cast p0, Landroid/app/Activity;

    return-object p0
.end method
