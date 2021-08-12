.class final Lcom/kwai/filedownloader/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwai/filedownloader/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/kwai/filedownloader/c;


# direct methods
.method private constructor <init>(Lcom/kwai/filedownloader/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwai/filedownloader/c$a;->a:Lcom/kwai/filedownloader/c;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/kwai/filedownloader/c;->a(Lcom/kwai/filedownloader/c;Z)Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwai/filedownloader/c;Lcom/kwai/filedownloader/c$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/c$a;-><init>(Lcom/kwai/filedownloader/c;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 5

    iget-object v0, p0, Lcom/kwai/filedownloader/c$a;->a:Lcom/kwai/filedownloader/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/c;->h()I

    move-result v0

    sget-boolean v1, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "add the task[%d] to the queue"

    invoke-static {p0, v2, v1}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_19
    invoke-static {}, Lcom/kwai/filedownloader/h;->a()Lcom/kwai/filedownloader/h;

    move-result-object v1

    iget-object v2, p0, Lcom/kwai/filedownloader/c$a;->a:Lcom/kwai/filedownloader/c;

    invoke-virtual {v1, v2}, Lcom/kwai/filedownloader/h;->c(Lcom/kwai/filedownloader/a$b;)V

    return v0
.end method
