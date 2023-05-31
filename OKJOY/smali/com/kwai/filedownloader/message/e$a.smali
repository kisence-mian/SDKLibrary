.class public final Lcom/kwai/filedownloader/message/e$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/message/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/kwai/filedownloader/message/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/kwai/filedownloader/message/e;

    invoke-direct {v0}, Lcom/kwai/filedownloader/message/e;-><init>()V

    sput-object v0, Lcom/kwai/filedownloader/message/e$a;->a:Lcom/kwai/filedownloader/message/e;

    return-void
.end method

.method static synthetic a()Lcom/kwai/filedownloader/message/e;
    .registers 1

    sget-object v0, Lcom/kwai/filedownloader/message/e$a;->a:Lcom/kwai/filedownloader/message/e;

    return-object v0
.end method
