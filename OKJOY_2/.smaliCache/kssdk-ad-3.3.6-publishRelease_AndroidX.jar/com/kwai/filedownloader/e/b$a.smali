.class public Lcom/kwai/filedownloader/e/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwai/filedownloader/f/c$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Lcom/kwai/filedownloader/e/a;
    .registers 3

    new-instance v0, Lcom/kwai/filedownloader/e/b;

    invoke-direct {v0, p1}, Lcom/kwai/filedownloader/e/b;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
