.class public final Lcom/tapjoy/internal/ew$a;
.super Lcom/tapjoy/internal/ei$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ei$a<",
        "Lcom/tapjoy/internal/ew;",
        "Lcom/tapjoy/internal/ew$a;",
        ">;"
    }
.end annotation


# instance fields
.field public A:Ljava/lang/Long;

.field public c:Lcom/tapjoy/internal/ez;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Long;

.field public f:Ljava/lang/Long;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/Long;

.field public i:Ljava/lang/Long;

.field public j:Lcom/tapjoy/internal/fb;

.field public k:Lcom/tapjoy/internal/ev;

.field public l:Lcom/tapjoy/internal/fi;

.field public m:Ljava/lang/Integer;

.field public n:Ljava/lang/Integer;

.field public o:Lcom/tapjoy/internal/ey;

.field public p:Lcom/tapjoy/internal/fe;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Lcom/tapjoy/internal/fd;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tapjoy/internal/fa;",
            ">;"
        }
    .end annotation
.end field

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/Integer;

.field public z:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 432
    invoke-direct {p0}, Lcom/tapjoy/internal/ei$a;-><init>()V

    .line 433
    invoke-static {}, Lcom/tapjoy/internal/ep;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/ew$a;->w:Ljava/util/List;

    .line 434
    return-void
.end method


# virtual methods
.method public final b()Lcom/tapjoy/internal/ew;
    .registers 31

    .line 564
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tapjoy/internal/ew$a;->c:Lcom/tapjoy/internal/ez;

    if-eqz v1, :cond_65

    iget-object v2, v0, Lcom/tapjoy/internal/ew$a;->d:Ljava/lang/String;

    if-eqz v2, :cond_65

    iget-object v2, v0, Lcom/tapjoy/internal/ew$a;->e:Ljava/lang/Long;

    if-eqz v2, :cond_65

    .line 571
    new-instance v1, Lcom/tapjoy/internal/ew;

    move-object v3, v1

    iget-object v4, v0, Lcom/tapjoy/internal/ew$a;->c:Lcom/tapjoy/internal/ez;

    iget-object v5, v0, Lcom/tapjoy/internal/ew$a;->d:Ljava/lang/String;

    iget-object v6, v0, Lcom/tapjoy/internal/ew$a;->e:Ljava/lang/Long;

    iget-object v7, v0, Lcom/tapjoy/internal/ew$a;->f:Ljava/lang/Long;

    iget-object v8, v0, Lcom/tapjoy/internal/ew$a;->g:Ljava/lang/String;

    iget-object v9, v0, Lcom/tapjoy/internal/ew$a;->h:Ljava/lang/Long;

    iget-object v10, v0, Lcom/tapjoy/internal/ew$a;->i:Ljava/lang/Long;

    iget-object v11, v0, Lcom/tapjoy/internal/ew$a;->j:Lcom/tapjoy/internal/fb;

    iget-object v12, v0, Lcom/tapjoy/internal/ew$a;->k:Lcom/tapjoy/internal/ev;

    iget-object v13, v0, Lcom/tapjoy/internal/ew$a;->l:Lcom/tapjoy/internal/fi;

    iget-object v14, v0, Lcom/tapjoy/internal/ew$a;->m:Ljava/lang/Integer;

    iget-object v15, v0, Lcom/tapjoy/internal/ew$a;->n:Ljava/lang/Integer;

    iget-object v2, v0, Lcom/tapjoy/internal/ew$a;->o:Lcom/tapjoy/internal/ey;

    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/tapjoy/internal/ew$a;->p:Lcom/tapjoy/internal/fe;

    move-object/from16 v17, v2

    iget-object v2, v0, Lcom/tapjoy/internal/ew$a;->q:Ljava/lang/String;

    move-object/from16 v18, v2

    iget-object v2, v0, Lcom/tapjoy/internal/ew$a;->r:Ljava/lang/String;

    move-object/from16 v19, v2

    iget-object v2, v0, Lcom/tapjoy/internal/ew$a;->s:Lcom/tapjoy/internal/fd;

    move-object/from16 v20, v2

    iget-object v2, v0, Lcom/tapjoy/internal/ew$a;->t:Ljava/lang/String;

    move-object/from16 v21, v2

    iget-object v2, v0, Lcom/tapjoy/internal/ew$a;->u:Ljava/lang/String;

    move-object/from16 v22, v2

    iget-object v2, v0, Lcom/tapjoy/internal/ew$a;->v:Ljava/lang/String;

    move-object/from16 v23, v2

    iget-object v2, v0, Lcom/tapjoy/internal/ew$a;->w:Ljava/util/List;

    move-object/from16 v24, v2

    iget-object v2, v0, Lcom/tapjoy/internal/ew$a;->x:Ljava/lang/String;

    move-object/from16 v25, v2

    iget-object v2, v0, Lcom/tapjoy/internal/ew$a;->y:Ljava/lang/Integer;

    move-object/from16 v26, v2

    iget-object v2, v0, Lcom/tapjoy/internal/ew$a;->z:Ljava/lang/Long;

    move-object/from16 v27, v2

    iget-object v2, v0, Lcom/tapjoy/internal/ew$a;->A:Ljava/lang/Long;

    move-object/from16 v28, v2

    invoke-super/range {p0 .. p0}, Lcom/tapjoy/internal/ei$a;->a()Lcom/tapjoy/internal/iw;

    move-result-object v29

    invoke-direct/range {v3 .. v29}, Lcom/tapjoy/internal/ew;-><init>(Lcom/tapjoy/internal/ez;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/tapjoy/internal/fb;Lcom/tapjoy/internal/ev;Lcom/tapjoy/internal/fi;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/tapjoy/internal/ey;Lcom/tapjoy/internal/fe;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/fd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Lcom/tapjoy/internal/iw;)V

    return-object v1

    .line 567
    :cond_65
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    const-string v3, "type"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    iget-object v3, v0, Lcom/tapjoy/internal/ew$a;->d:Ljava/lang/String;

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "name"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    iget-object v3, v0, Lcom/tapjoy/internal/ew$a;->e:Ljava/lang/Long;

    aput-object v3, v2, v1

    const/4 v1, 0x5

    const-string v3, "time"

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/tapjoy/internal/ep;->a([Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v1

    throw v1
.end method
