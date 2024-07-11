.class public Lcom/kwai/filedownloader/a/c$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwai/filedownloader/f/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/kwai/filedownloader/a/c$a;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kwai/filedownloader/a/c$b;-><init>(Lcom/kwai/filedownloader/a/c$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/kwai/filedownloader/a/c$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwai/filedownloader/a/c$b;->a:Lcom/kwai/filedownloader/a/c$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/kwai/filedownloader/a/b;
    .registers 4

    new-instance v0, Lcom/kwai/filedownloader/a/c;

    iget-object v1, p0, Lcom/kwai/filedownloader/a/c$b;->a:Lcom/kwai/filedownloader/a/c$a;

    invoke-direct {v0, p1, v1}, Lcom/kwai/filedownloader/a/c;-><init>(Ljava/lang/String;Lcom/kwai/filedownloader/a/c$a;)V

    return-object v0
.end method
