.class public Lcom/kwai/filedownloader/services/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/services/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lcom/kwai/filedownloader/f/c$c;

.field b:Ljava/lang/Integer;

.field c:Lcom/kwai/filedownloader/f/c$e;

.field d:Lcom/kwai/filedownloader/f/c$b;

.field e:Lcom/kwai/filedownloader/f/c$a;

.field f:Lcom/kwai/filedownloader/f/c$d;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/kwai/filedownloader/services/c$a;
    .registers 2

    if-lez p1, :cond_8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/kwai/filedownloader/services/c$a;->b:Ljava/lang/Integer;

    :cond_8
    return-object p0
.end method

.method public a(Lcom/kwai/filedownloader/f/c$b;)Lcom/kwai/filedownloader/services/c$a;
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/services/c$a;->d:Lcom/kwai/filedownloader/f/c$b;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/kwai/filedownloader/services/c$a;->a:Lcom/kwai/filedownloader/f/c$c;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/kwai/filedownloader/services/c$a;->b:Ljava/lang/Integer;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/kwai/filedownloader/services/c$a;->c:Lcom/kwai/filedownloader/f/c$e;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/kwai/filedownloader/services/c$a;->d:Lcom/kwai/filedownloader/f/c$b;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/kwai/filedownloader/services/c$a;->e:Lcom/kwai/filedownloader/f/c$a;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "component: database[%s], maxNetworkCount[%s], outputStream[%s], connection[%s], connectionCountAdapter[%s]"

    invoke-static {v1, v0}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
