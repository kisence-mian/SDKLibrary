.class Lcom/kwai/filedownloader/p$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/kwai/filedownloader/p;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/kwai/filedownloader/p;

    invoke-direct {v0}, Lcom/kwai/filedownloader/p;-><init>()V

    sput-object v0, Lcom/kwai/filedownloader/p$a;->a:Lcom/kwai/filedownloader/p;

    invoke-static {}, Lcom/kwai/filedownloader/message/e;->a()Lcom/kwai/filedownloader/message/e;

    move-result-object v0

    new-instance v1, Lcom/kwai/filedownloader/z;

    invoke-direct {v1}, Lcom/kwai/filedownloader/z;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/message/e;->a(Lcom/kwai/filedownloader/message/e$b;)V

    return-void
.end method

.method static synthetic a()Lcom/kwai/filedownloader/p;
    .registers 1

    sget-object v0, Lcom/kwai/filedownloader/p$a;->a:Lcom/kwai/filedownloader/p;

    return-object v0
.end method
