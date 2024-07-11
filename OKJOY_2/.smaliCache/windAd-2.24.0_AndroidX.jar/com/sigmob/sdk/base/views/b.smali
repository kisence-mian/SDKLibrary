.class public Lcom/sigmob/sdk/base/views/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/views/b$a;,
        Lcom/sigmob/sdk/base/views/b$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Lcom/sigmob/sdk/base/views/b$b;

.field private final e:Lcom/sigmob/sdk/base/views/b$a;

.field private final f:I

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "image/jpeg"

    const-string v1, "image/png"

    const-string v2, "image/bmp"

    const-string v3, "image/gif"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/views/b;->a:Ljava/util/List;

    const-string v0, "application/x-javascript"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/views/b;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sigmob/sdk/base/views/b$b;Lcom/sigmob/sdk/base/views/b$a;II)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    invoke-static {p2}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    invoke-static {p3}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/b;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/sigmob/sdk/base/views/b;->d:Lcom/sigmob/sdk/base/views/b$b;

    iput-object p3, p0, Lcom/sigmob/sdk/base/views/b;->e:Lcom/sigmob/sdk/base/views/b$a;

    iput p4, p0, Lcom/sigmob/sdk/base/views/b;->f:I

    iput p5, p0, Lcom/sigmob/sdk/base/views/b;->g:I

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/base/views/CreativeWebView;)V
    .registers 4

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sigmob/sdk/base/views/b$1;->a:[I

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/b;->d:Lcom/sigmob/sdk/base/views/b$b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/views/b$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_aa

    goto/16 :goto_a9

    :goto_12
    :pswitch_12
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/b;->c:Ljava/lang/String;

    :goto_14
    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/views/CreativeWebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_a9

    :pswitch_19
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/b;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_12

    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :pswitch_3c
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/b;->e:Lcom/sigmob/sdk/base/views/b$a;

    sget-object v1, Lcom/sigmob/sdk/base/views/b$a;->b:Lcom/sigmob/sdk/base/views/b$a;

    if-ne v0, v1, :cond_56

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<html><head></head><body style=\"margin:0;padding:0\"><img src=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" width=\"100%\" style=\"max-width:100%;max-height:100%;\" /></body></html>"

    goto :goto_9e

    :cond_56
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/b;->e:Lcom/sigmob/sdk/base/views/b$a;

    sget-object v1, Lcom/sigmob/sdk/base/views/b$a;->c:Lcom/sigmob/sdk/base/views/b$a;

    if-ne v0, v1, :cond_a9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<script src=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"></script>"

    goto :goto_9e

    :pswitch_70
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/b;->c:Ljava/lang/String;

    goto :goto_a6

    :pswitch_73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<iframe frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" style=\"border: 0px; margin: 0px;\" width=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sigmob/sdk/base/views/b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" height=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sigmob/sdk/base/views/b;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" src=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"></iframe>"

    :goto_9e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a6
    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/views/CreativeWebView;->a(Ljava/lang/String;)V

    :cond_a9
    :goto_a9
    return-void

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_73
        :pswitch_70
        :pswitch_3c
        :pswitch_19
        :pswitch_12
    .end packed-switch
.end method
