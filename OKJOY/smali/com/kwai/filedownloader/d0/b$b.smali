.class Lcom/kwai/filedownloader/d0/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/d0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/kwai/filedownloader/f0/c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/kwai/filedownloader/d0/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public next()Lcom/kwai/filedownloader/f0/c;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d0/b$b;->next()Lcom/kwai/filedownloader/f0/c;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 1

    return-void
.end method
