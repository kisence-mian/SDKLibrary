.class public Lcom/kwai/filedownloader/download/d$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/download/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/Exception;

.field private c:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Exception;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/download/d$a;->b:Ljava/lang/Exception;

    return-object v0
.end method

.method a(I)V
    .registers 2

    iput p1, p0, Lcom/kwai/filedownloader/download/d$a;->c:I

    return-void
.end method

.method a(Ljava/lang/Exception;)V
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/download/d$a;->b:Ljava/lang/Exception;

    return-void
.end method

.method a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/kwai/filedownloader/download/d$a;->a:Z

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/kwai/filedownloader/download/d$a;->c:I

    return v0
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/d$a;->a:Z

    return v0
.end method
