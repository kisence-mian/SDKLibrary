.class public Lcom/kwai/filedownloader/f/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/f/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/kwai/filedownloader/f/e;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/kwai/filedownloader/f/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kwai/filedownloader/f/e;-><init>(Lcom/kwai/filedownloader/f/e$1;)V

    sput-object v0, Lcom/kwai/filedownloader/f/e$a;->a:Lcom/kwai/filedownloader/f/e;

    return-void
.end method

.method static synthetic a()Lcom/kwai/filedownloader/f/e;
    .registers 1

    sget-object v0, Lcom/kwai/filedownloader/f/e$a;->a:Lcom/kwai/filedownloader/f/e;

    return-object v0
.end method
