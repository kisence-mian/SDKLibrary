.class public Lcom/kwai/filedownloader/h0/e$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/h0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/kwai/filedownloader/h0/e;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/kwai/filedownloader/h0/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kwai/filedownloader/h0/e;-><init>(Lcom/kwai/filedownloader/h0/e$a;)V

    sput-object v0, Lcom/kwai/filedownloader/h0/e$b;->a:Lcom/kwai/filedownloader/h0/e;

    return-void
.end method

.method static synthetic a()Lcom/kwai/filedownloader/h0/e;
    .registers 1

    sget-object v0, Lcom/kwai/filedownloader/h0/e$b;->a:Lcom/kwai/filedownloader/h0/e;

    return-object v0
.end method
