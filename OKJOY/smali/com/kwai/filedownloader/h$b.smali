.class final Lcom/kwai/filedownloader/h$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/kwai/filedownloader/h;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/kwai/filedownloader/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kwai/filedownloader/h;-><init>(Lcom/kwai/filedownloader/h$a;)V

    sput-object v0, Lcom/kwai/filedownloader/h$b;->a:Lcom/kwai/filedownloader/h;

    return-void
.end method

.method static synthetic a()Lcom/kwai/filedownloader/h;
    .registers 1

    sget-object v0, Lcom/kwai/filedownloader/h$b;->a:Lcom/kwai/filedownloader/h;

    return-object v0
.end method
