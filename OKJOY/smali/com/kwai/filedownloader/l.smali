.class public Lcom/kwai/filedownloader/l;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/l$a;
    }
.end annotation


# static fields
.field private static a:Lcom/kwai/filedownloader/l$a;


# direct methods
.method public static a()Lcom/kwai/filedownloader/l$a;
    .registers 1

    sget-object v0, Lcom/kwai/filedownloader/l;->a:Lcom/kwai/filedownloader/l$a;

    return-object v0
.end method

.method public static b()Z
    .registers 1

    invoke-static {}, Lcom/kwai/filedownloader/l;->a()Lcom/kwai/filedownloader/l$a;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
