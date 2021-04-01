.class public final Lcom/bytedance/sdk/openadsdk/h/b/b;
.super Ljava/lang/Object;
.source "VideoHttpHeaderTableContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# direct methods
.method public static a(Z)I
    .registers 2

    .prologue
    .line 22
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method
