.class Lcom/kwai/filedownloader/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwai/filedownloader/j;->a(Lcom/kwai/filedownloader/s;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwai/filedownloader/s;

.field final synthetic b:Lcom/kwai/filedownloader/j;


# direct methods
.method constructor <init>(Lcom/kwai/filedownloader/j;Lcom/kwai/filedownloader/s;)V
    .registers 3

    iput-object p1, p0, Lcom/kwai/filedownloader/j$1;->b:Lcom/kwai/filedownloader/j;

    iput-object p2, p0, Lcom/kwai/filedownloader/j$1;->a:Lcom/kwai/filedownloader/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/j$1;->a:Lcom/kwai/filedownloader/s;

    invoke-interface {v0}, Lcom/kwai/filedownloader/s;->b()V

    return-void
.end method
