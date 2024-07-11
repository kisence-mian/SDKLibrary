.class final Lcom/tapjoy/internal/gj$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/gj;

.field private b:I

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/gj;IJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/tapjoy/internal/gj$a;->a:Lcom/tapjoy/internal/gj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p2, p0, Lcom/tapjoy/internal/gj$a;->b:I

    .line 49
    iput-wide p3, p0, Lcom/tapjoy/internal/gj$a;->c:J

    .line 50
    iput-object p5, p0, Lcom/tapjoy/internal/gj$a;->d:Ljava/lang/String;

    .line 51
    iput-object p6, p0, Lcom/tapjoy/internal/gj$a;->e:Ljava/lang/String;

    .line 52
    iput-object p7, p0, Lcom/tapjoy/internal/gj$a;->f:Ljava/util/Map;

    .line 53
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 58
    :try_start_0
    iget v0, p0, Lcom/tapjoy/internal/gj$a;->b:I

    packed-switch v0, :pswitch_data_2a

    goto :goto_22

    .line 66
    :pswitch_6
    iget-object v1, p0, Lcom/tapjoy/internal/gj$a;->a:Lcom/tapjoy/internal/gj;

    iget-wide v2, p0, Lcom/tapjoy/internal/gj$a;->c:J

    iget-object v4, p0, Lcom/tapjoy/internal/gj$a;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/tapjoy/internal/gj$a;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/tapjoy/internal/gj$a;->f:Ljava/util/Map;

    invoke-static/range {v1 .. v6}, Lcom/tapjoy/internal/gj;->a(Lcom/tapjoy/internal/gj;JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_22

    .line 63
    :pswitch_14
    iget-object v0, p0, Lcom/tapjoy/internal/gj$a;->a:Lcom/tapjoy/internal/gj;

    invoke-static {v0}, Lcom/tapjoy/internal/gj;->b(Lcom/tapjoy/internal/gj;)V

    .line 64
    return-void

    .line 60
    :pswitch_1a
    iget-object v0, p0, Lcom/tapjoy/internal/gj$a;->a:Lcom/tapjoy/internal/gj;

    iget-wide v1, p0, Lcom/tapjoy/internal/gj$a;->c:J

    invoke-static {v0, v1, v2}, Lcom/tapjoy/internal/gj;->a(Lcom/tapjoy/internal/gj;J)V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_23

    .line 61
    return-void

    .line 71
    :goto_22
    return-void

    .line 69
    :catchall_23
    move-exception v0

    .line 70
    iget-object v0, p0, Lcom/tapjoy/internal/gj$a;->a:Lcom/tapjoy/internal/gj;

    invoke-static {v0}, Lcom/tapjoy/internal/gj;->c(Lcom/tapjoy/internal/gj;)V

    .line 72
    return-void

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_14
        :pswitch_6
    .end packed-switch
.end method
