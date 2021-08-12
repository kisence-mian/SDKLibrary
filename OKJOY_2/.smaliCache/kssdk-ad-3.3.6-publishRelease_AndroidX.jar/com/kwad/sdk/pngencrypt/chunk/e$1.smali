.class final Lcom/kwad/sdk/pngencrypt/chunk/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/pngencrypt/chunk/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/pngencrypt/chunk/e;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/e$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;)Z
    .registers 3

    iget-object p1, p1, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/e$1;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
