.class public Lcom/sigmob/sdk/base/views/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Lcom/sigmob/sdk/base/views/f;

.field private final e:Lcom/sigmob/sdk/base/views/e;

.field private final f:I

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "image/jpeg"

    aput-object v1, v0, v3

    const-string v1, "image/png"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "image/bmp"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "image/gif"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/views/d;->a:Ljava/util/List;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "application/x-javascript"

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/views/d;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sigmob/sdk/base/views/f;Lcom/sigmob/sdk/base/views/e;II)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    invoke-static {p2}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    invoke-static {p3}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/d;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/sigmob/sdk/base/views/d;->d:Lcom/sigmob/sdk/base/views/f;

    iput-object p3, p0, Lcom/sigmob/sdk/base/views/d;->e:Lcom/sigmob/sdk/base/views/e;

    iput p4, p0, Lcom/sigmob/sdk/base/views/d;->f:I

    iput p5, p0, Lcom/sigmob/sdk/base/views/d;->g:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    sget-object v1, Lcom/sigmob/sdk/base/views/d$1;->a:[I

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/d;->d:Lcom/sigmob/sdk/base/views/f;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/views/f;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_52

    :cond_e
    move-object p2, v0

    :cond_f
    :goto_f
    return-object p2

    :pswitch_10
    sget-object v1, Lcom/sigmob/sdk/base/views/e;->b:Lcom/sigmob/sdk/base/views/e;

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/d;->e:Lcom/sigmob/sdk/base/views/e;

    if-ne v1, v2, :cond_23

    const-string v0, "CreativeType.IMAGE"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    move-object p2, p1

    goto :goto_f

    :cond_23
    sget-object v1, Lcom/sigmob/sdk/base/views/e;->c:Lcom/sigmob/sdk/base/views/e;

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/d;->e:Lcom/sigmob/sdk/base/views/e;

    if-ne v1, v2, :cond_2f

    const-string v0, "CreativeType.JAVASCRIPT"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    goto :goto_f

    :cond_2f
    move-object p2, v0

    goto :goto_f

    :pswitch_31
    sget-object v1, Lcom/sigmob/sdk/base/views/e;->b:Lcom/sigmob/sdk/base/views/e;

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/d;->e:Lcom/sigmob/sdk/base/views/e;

    if-ne v1, v2, :cond_46

    const-string v1, "CreativeType.IMAGE"

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_44

    move-object p2, p1

    goto :goto_f

    :cond_44
    move-object p2, v0

    goto :goto_f

    :cond_46
    sget-object v1, Lcom/sigmob/sdk/base/views/e;->c:Lcom/sigmob/sdk/base/views/e;

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/d;->e:Lcom/sigmob/sdk/base/views/e;

    if-ne v1, v2, :cond_e

    const-string v0, "CreativeType.JAVASCRIPT"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    goto :goto_f

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_31
        :pswitch_31
        :pswitch_10
        :pswitch_31
        :pswitch_31
    .end packed-switch
.end method

.method public a(Lcom/sigmob/sdk/base/views/CreativeWebView;)V
    .registers 4

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sigmob/sdk/base/views/d$1;->a:[I

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/d;->d:Lcom/sigmob/sdk/base/views/f;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/views/f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_d0

    :cond_10
    :goto_10
    return-void

    :pswitch_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<iframe frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" style=\"border: 0px; margin: 0px;\" width=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sigmob/sdk/base/views/d;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" height=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sigmob/sdk/base/views/d;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" src=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"></iframe>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/views/CreativeWebView;->a(Ljava/lang/String;)V

    goto :goto_10

    :pswitch_48
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/d;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/views/CreativeWebView;->a(Ljava/lang/String;)V

    goto :goto_10

    :pswitch_4e
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/d;->e:Lcom/sigmob/sdk/base/views/e;

    sget-object v1, Lcom/sigmob/sdk/base/views/e;->b:Lcom/sigmob/sdk/base/views/e;

    if-ne v0, v1, :cond_73

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<html><head></head><body style=\"margin:0;padding:0\"><img src=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" width=\"100%\" style=\"max-width:100%;max-height:100%;\" /></body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/views/CreativeWebView;->a(Ljava/lang/String;)V

    goto :goto_10

    :cond_73
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/d;->e:Lcom/sigmob/sdk/base/views/e;

    sget-object v1, Lcom/sigmob/sdk/base/views/e;->c:Lcom/sigmob/sdk/base/views/e;

    if-ne v0, v1, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<script src=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"></script>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/views/CreativeWebView;->a(Ljava/lang/String;)V

    goto/16 :goto_10

    :pswitch_99
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/d;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/d;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/views/CreativeWebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_ae
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/views/CreativeWebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_10

    :pswitch_c8
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/d;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/views/CreativeWebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_10

    nop

    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_48
        :pswitch_4e
        :pswitch_99
        :pswitch_c8
    .end packed-switch
.end method

.method public b()Lcom/sigmob/sdk/base/views/f;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/d;->d:Lcom/sigmob/sdk/base/views/f;

    return-object v0
.end method

.method public c()Lcom/sigmob/sdk/base/views/e;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/d;->e:Lcom/sigmob/sdk/base/views/e;

    return-object v0
.end method
