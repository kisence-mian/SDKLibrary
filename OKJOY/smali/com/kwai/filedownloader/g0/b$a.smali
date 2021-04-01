.class public Lcom/kwai/filedownloader/g0/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwai/filedownloader/h0/c$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/g0/b;
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
.method public a(Ljava/io/File;)Lcom/kwai/filedownloader/g0/a;
    .registers 3

    new-instance v0, Lcom/kwai/filedownloader/g0/b;

    invoke-direct {v0, p1}, Lcom/kwai/filedownloader/g0/b;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
