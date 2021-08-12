.class public final Lcom/anythink/core/c/c$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/anythink/core/c/c$b;",
        ">;"
    }
.end annotation


# static fields
.field public static G:I

.field public static H:I

.field public static I:I

.field public static J:I

.field public static K:I

.field public static L:I


# instance fields
.field public A:I

.field public B:I

.field public C:Ljava/lang/String;

.field public D:J

.field public E:J

.field public F:I

.field private M:J

.field private N:J

.field private O:I

.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:J

.field public j:Ljava/lang/String;

.field public k:I

.field public l:I

.field public m:D

.field public n:I

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:I

.field public r:J

.field public s:J

.field public t:Ljava/lang/String;

.field public u:J

.field public v:J

.field public w:J

.field public x:J

.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 896
    const/4 v0, 0x0

    sput v0, Lcom/anythink/core/c/c$b;->G:I

    .line 897
    const/4 v0, 0x1

    sput v0, Lcom/anythink/core/c/c$b;->H:I

    .line 898
    const/4 v0, 0x2

    sput v0, Lcom/anythink/core/c/c$b;->I:I

    .line 899
    const/4 v0, 0x3

    sput v0, Lcom/anythink/core/c/c$b;->J:I

    .line 900
    const/4 v0, 0x4

    sput v0, Lcom/anythink/core/c/c$b;->K:I

    .line 901
    const/4 v0, 0x5

    sput v0, Lcom/anythink/core/c/c$b;->L:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 905
    return-void
.end method

.method private a(Lcom/anythink/core/c/c$b;)I
    .registers 6

    .line 1093
    iget-wide v0, p0, Lcom/anythink/core/c/c$b;->m:D

    iget-wide v2, p1, Lcom/anythink/core/c/c$b;->m:D

    cmpl-double p1, v0, v2

    if-lez p1, :cond_a

    .line 1094
    const/4 p1, -0x1

    return p1

    .line 1096
    :cond_a
    const/4 p1, 0x1

    return p1
.end method

.method private a(D)V
    .registers 3

    .line 992
    iput-wide p1, p0, Lcom/anythink/core/c/c$b;->m:D

    .line 993
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 2

    .line 960
    iput-object p1, p0, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    .line 961
    return-void
.end method

.method private b(I)V
    .registers 2

    .line 920
    iput p1, p0, Lcom/anythink/core/c/c$b;->q:I

    .line 921
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 2

    .line 968
    iput-object p1, p0, Lcom/anythink/core/c/c$b;->j:Ljava/lang/String;

    .line 969
    return-void
.end method

.method private c(I)V
    .registers 2

    .line 976
    iput p1, p0, Lcom/anythink/core/c/c$b;->k:I

    .line 977
    return-void
.end method

.method private c(J)V
    .registers 3

    .line 912
    iput-wide p1, p0, Lcom/anythink/core/c/c$b;->x:J

    .line 913
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 2

    .line 1008
    iput-object p1, p0, Lcom/anythink/core/c/c$b;->o:Ljava/lang/String;

    .line 1009
    return-void
.end method

.method private d()J
    .registers 3

    .line 908
    iget-wide v0, p0, Lcom/anythink/core/c/c$b;->x:J

    return-wide v0
.end method

.method private d(I)V
    .registers 2

    .line 984
    iput p1, p0, Lcom/anythink/core/c/c$b;->l:I

    .line 985
    return-void
.end method

.method private d(J)V
    .registers 3

    .line 952
    iput-wide p1, p0, Lcom/anythink/core/c/c$b;->i:J

    .line 953
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .registers 2

    .line 1016
    iput-object p1, p0, Lcom/anythink/core/c/c$b;->p:Ljava/lang/String;

    .line 1017
    return-void
.end method

.method private e()I
    .registers 2

    .line 916
    iget v0, p0, Lcom/anythink/core/c/c$b;->q:I

    return v0
.end method

.method private e(I)V
    .registers 2

    .line 1040
    iput p1, p0, Lcom/anythink/core/c/c$b;->y:I

    .line 1041
    return-void
.end method

.method private e(J)V
    .registers 3

    .line 1000
    iput-wide p1, p0, Lcom/anythink/core/c/c$b;->u:J

    .line 1001
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 2

    .line 1072
    iput-object p1, p0, Lcom/anythink/core/c/c$b;->C:Ljava/lang/String;

    .line 1073
    return-void
.end method

.method private f()J
    .registers 3

    .line 948
    iget-wide v0, p0, Lcom/anythink/core/c/c$b;->i:J

    return-wide v0
.end method

.method private f(I)V
    .registers 2

    .line 1048
    iput p1, p0, Lcom/anythink/core/c/c$b;->z:I

    .line 1049
    return-void
.end method

.method private f(J)V
    .registers 3

    .line 1020
    iput-wide p1, p0, Lcom/anythink/core/c/c$b;->v:J

    .line 1021
    return-void
.end method

.method private g()Ljava/lang/String;
    .registers 2

    .line 956
    iget-object v0, p0, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    return-object v0
.end method

.method private g(I)V
    .registers 2

    .line 1056
    iput p1, p0, Lcom/anythink/core/c/c$b;->A:I

    .line 1057
    return-void
.end method

.method private g(J)V
    .registers 3

    .line 1028
    iput-wide p1, p0, Lcom/anythink/core/c/c$b;->w:J

    .line 1029
    return-void
.end method

.method private h()Ljava/lang/String;
    .registers 2

    .line 964
    iget-object v0, p0, Lcom/anythink/core/c/c$b;->j:Ljava/lang/String;

    return-object v0
.end method

.method private h(I)V
    .registers 2

    .line 1064
    iput p1, p0, Lcom/anythink/core/c/c$b;->B:I

    .line 1065
    return-void
.end method

.method private h(J)V
    .registers 3

    .line 1076
    iput-wide p1, p0, Lcom/anythink/core/c/c$b;->D:J

    .line 1077
    return-void
.end method

.method private i()I
    .registers 2

    .line 972
    iget v0, p0, Lcom/anythink/core/c/c$b;->k:I

    return v0
.end method

.method private i(J)V
    .registers 3

    .line 1088
    iput-wide p1, p0, Lcom/anythink/core/c/c$b;->E:J

    .line 1089
    return-void
.end method

.method private j()I
    .registers 2

    .line 980
    iget v0, p0, Lcom/anythink/core/c/c$b;->l:I

    return v0
.end method

.method private k()D
    .registers 3

    .line 988
    iget-wide v0, p0, Lcom/anythink/core/c/c$b;->m:D

    return-wide v0
.end method

.method private l()J
    .registers 3

    .line 996
    iget-wide v0, p0, Lcom/anythink/core/c/c$b;->u:J

    return-wide v0
.end method

.method private m()Ljava/lang/String;
    .registers 2

    .line 1004
    iget-object v0, p0, Lcom/anythink/core/c/c$b;->o:Ljava/lang/String;

    return-object v0
.end method

.method private n()Ljava/lang/String;
    .registers 2

    .line 1012
    iget-object v0, p0, Lcom/anythink/core/c/c$b;->p:Ljava/lang/String;

    return-object v0
.end method

.method private o()J
    .registers 3

    .line 1024
    iget-wide v0, p0, Lcom/anythink/core/c/c$b;->v:J

    return-wide v0
.end method

.method private p()J
    .registers 3

    .line 1032
    iget-wide v0, p0, Lcom/anythink/core/c/c$b;->w:J

    return-wide v0
.end method

.method private q()I
    .registers 2

    .line 1036
    iget v0, p0, Lcom/anythink/core/c/c$b;->y:I

    return v0
.end method

.method private r()I
    .registers 2

    .line 1044
    iget v0, p0, Lcom/anythink/core/c/c$b;->z:I

    return v0
.end method

.method private s()I
    .registers 2

    .line 1052
    iget v0, p0, Lcom/anythink/core/c/c$b;->A:I

    return v0
.end method

.method private t()I
    .registers 2

    .line 1060
    iget v0, p0, Lcom/anythink/core/c/c$b;->B:I

    return v0
.end method

.method private u()Ljava/lang/String;
    .registers 2

    .line 1068
    iget-object v0, p0, Lcom/anythink/core/c/c$b;->C:Ljava/lang/String;

    return-object v0
.end method

.method private v()J
    .registers 3

    .line 1080
    iget-wide v0, p0, Lcom/anythink/core/c/c$b;->D:J

    return-wide v0
.end method

.method private w()J
    .registers 3

    .line 1084
    iget-wide v0, p0, Lcom/anythink/core/c/c$b;->E:J

    return-wide v0
.end method


# virtual methods
.method public final a()J
    .registers 3

    .line 924
    iget-wide v0, p0, Lcom/anythink/core/c/c$b;->M:J

    return-wide v0
.end method

.method public final a(I)V
    .registers 2

    .line 944
    iput p1, p0, Lcom/anythink/core/c/c$b;->O:I

    .line 945
    return-void
.end method

.method public final a(J)V
    .registers 3

    .line 928
    iput-wide p1, p0, Lcom/anythink/core/c/c$b;->M:J

    .line 929
    return-void
.end method

.method public final b()J
    .registers 3

    .line 932
    iget-wide v0, p0, Lcom/anythink/core/c/c$b;->N:J

    return-wide v0
.end method

.method public final b(J)V
    .registers 3

    .line 936
    iput-wide p1, p0, Lcom/anythink/core/c/c$b;->N:J

    .line 937
    return-void
.end method

.method public final c()I
    .registers 2

    .line 940
    iget v0, p0, Lcom/anythink/core/c/c$b;->O:I

    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 6

    .line 746
    check-cast p1, Lcom/anythink/core/c/c$b;

    .line 2093
    iget-wide v0, p0, Lcom/anythink/core/c/c$b;->m:D

    iget-wide v2, p1, Lcom/anythink/core/c/c$b;->m:D

    cmpl-double p1, v0, v2

    if-lez p1, :cond_c

    .line 2094
    const/4 p1, -0x1

    return p1

    .line 2096
    :cond_c
    const/4 p1, 0x1

    .line 746
    return p1
.end method
