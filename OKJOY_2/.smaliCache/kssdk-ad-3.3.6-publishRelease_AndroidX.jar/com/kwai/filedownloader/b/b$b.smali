.class Lcom/kwai/filedownloader/b/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/kwai/filedownloader/d/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/kwai/filedownloader/b/b;


# direct methods
.method constructor <init>(Lcom/kwai/filedownloader/b/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/b/b$b;->a:Lcom/kwai/filedownloader/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/kwai/filedownloader/d/c;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/kwai/filedownloader/b/b$b;->a()Lcom/kwai/filedownloader/d/c;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 1

    return-void
.end method
