.class public final Lcom/tapjoy/internal/fi$a;
.super Lcom/tapjoy/internal/ei$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ei$a<",
        "Lcom/tapjoy/internal/fi;",
        "Lcom/tapjoy/internal/fi$a;",
        ">;"
    }
.end annotation


# instance fields
.field public A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public B:Ljava/lang/Boolean;

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/Integer;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tapjoy/internal/ff;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/lang/Integer;

.field public i:Ljava/lang/Long;

.field public j:Ljava/lang/Long;

.field public k:Ljava/lang/Long;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/Integer;

.field public n:Ljava/lang/Double;

.field public o:Ljava/lang/Long;

.field public p:Ljava/lang/Double;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/Boolean;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/Integer;

.field public u:Ljava/lang/Integer;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 457
    invoke-direct {p0}, Lcom/tapjoy/internal/ei$a;-><init>()V

    .line 458
    invoke-static {}, Lcom/tapjoy/internal/ep;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fi$a;->g:Ljava/util/List;

    .line 459
    invoke-static {}, Lcom/tapjoy/internal/ep;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fi$a;->A:Ljava/util/List;

    .line 460
    return-void
.end method


# virtual methods
.method public final b()Lcom/tapjoy/internal/fi;
    .registers 32

    .line 596
    move-object/from16 v0, p0

    new-instance v29, Lcom/tapjoy/internal/fi;

    move-object/from16 v1, v29

    iget-object v2, v0, Lcom/tapjoy/internal/fi$a;->c:Ljava/lang/Long;

    iget-object v3, v0, Lcom/tapjoy/internal/fi$a;->d:Ljava/lang/String;

    iget-object v4, v0, Lcom/tapjoy/internal/fi$a;->e:Ljava/lang/Integer;

    iget-object v5, v0, Lcom/tapjoy/internal/fi$a;->f:Ljava/lang/Integer;

    iget-object v6, v0, Lcom/tapjoy/internal/fi$a;->g:Ljava/util/List;

    iget-object v7, v0, Lcom/tapjoy/internal/fi$a;->h:Ljava/lang/Integer;

    iget-object v8, v0, Lcom/tapjoy/internal/fi$a;->i:Ljava/lang/Long;

    iget-object v9, v0, Lcom/tapjoy/internal/fi$a;->j:Ljava/lang/Long;

    iget-object v10, v0, Lcom/tapjoy/internal/fi$a;->k:Ljava/lang/Long;

    iget-object v11, v0, Lcom/tapjoy/internal/fi$a;->l:Ljava/lang/String;

    iget-object v12, v0, Lcom/tapjoy/internal/fi$a;->m:Ljava/lang/Integer;

    iget-object v13, v0, Lcom/tapjoy/internal/fi$a;->n:Ljava/lang/Double;

    iget-object v14, v0, Lcom/tapjoy/internal/fi$a;->o:Ljava/lang/Long;

    iget-object v15, v0, Lcom/tapjoy/internal/fi$a;->p:Ljava/lang/Double;

    move-object/from16 v30, v1

    iget-object v1, v0, Lcom/tapjoy/internal/fi$a;->q:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/tapjoy/internal/fi$a;->r:Ljava/lang/Boolean;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/tapjoy/internal/fi$a;->s:Ljava/lang/String;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/tapjoy/internal/fi$a;->t:Ljava/lang/Integer;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/tapjoy/internal/fi$a;->u:Ljava/lang/Integer;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/tapjoy/internal/fi$a;->v:Ljava/lang/String;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/tapjoy/internal/fi$a;->w:Ljava/lang/String;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/tapjoy/internal/fi$a;->x:Ljava/lang/String;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/tapjoy/internal/fi$a;->y:Ljava/lang/String;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/tapjoy/internal/fi$a;->z:Ljava/lang/String;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/tapjoy/internal/fi$a;->A:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/tapjoy/internal/fi$a;->B:Ljava/lang/Boolean;

    move-object/from16 v27, v1

    invoke-super/range {p0 .. p0}, Lcom/tapjoy/internal/ei$a;->a()Lcom/tapjoy/internal/iw;

    move-result-object v28

    move-object/from16 v1, v30

    invoke-direct/range {v1 .. v28}, Lcom/tapjoy/internal/fi;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Lcom/tapjoy/internal/iw;)V

    return-object v29
.end method
