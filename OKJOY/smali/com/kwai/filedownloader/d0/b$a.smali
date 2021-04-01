.class Lcom/kwai/filedownloader/d0/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwai/filedownloader/d0/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/d0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/kwai/filedownloader/d0/b;


# direct methods
.method constructor <init>(Lcom/kwai/filedownloader/d0/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/d0/b$a;->a:Lcom/kwai/filedownloader/d0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(ILcom/kwai/filedownloader/f0/c;)V
    .registers 3

    return-void
.end method

.method public a(Lcom/kwai/filedownloader/f0/c;)V
    .registers 2

    return-void
.end method

.method public b(Lcom/kwai/filedownloader/f0/c;)V
    .registers 2

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/kwai/filedownloader/f0/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/kwai/filedownloader/d0/b$b;

    iget-object v1, p0, Lcom/kwai/filedownloader/d0/b$a;->a:Lcom/kwai/filedownloader/d0/b;

    invoke-direct {v0, v1}, Lcom/kwai/filedownloader/d0/b$b;-><init>(Lcom/kwai/filedownloader/d0/b;)V

    return-object v0
.end method
