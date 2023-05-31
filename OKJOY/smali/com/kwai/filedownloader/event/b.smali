.class public abstract Lcom/kwai/filedownloader/event/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Ljava/lang/Runnable;

.field protected final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwai/filedownloader/event/b;->a:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/kwai/filedownloader/event/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/event/b;->b:Ljava/lang/String;

    return-object v0
.end method
