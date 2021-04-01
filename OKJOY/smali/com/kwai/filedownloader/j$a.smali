.class Lcom/kwai/filedownloader/j$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwai/filedownloader/j;->a(Lcom/kwai/filedownloader/t;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwai/filedownloader/t;


# direct methods
.method constructor <init>(Lcom/kwai/filedownloader/j;Lcom/kwai/filedownloader/t;)V
    .registers 3

    iput-object p2, p0, Lcom/kwai/filedownloader/j$a;->a:Lcom/kwai/filedownloader/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/j$a;->a:Lcom/kwai/filedownloader/t;

    invoke-interface {v0}, Lcom/kwai/filedownloader/t;->d()V

    return-void
.end method
