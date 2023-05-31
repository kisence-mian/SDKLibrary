.class public Lcom/kwad/sdk/contentalliance/refreshview/f;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a()Z
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static b()Z
    .registers 1

    invoke-static {}, Lcom/kwad/sdk/contentalliance/refreshview/f;->a()Z

    move-result v0

    return v0
.end method
