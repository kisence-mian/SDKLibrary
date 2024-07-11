.class public final Lcom/tapjoy/internal/fq;
.super Lcom/tapjoy/internal/gv;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/tapjoy/internal/fj;

.field private d:Z

.field private final e:Lcom/tapjoy/internal/gb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/gb<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Lcom/tapjoy/internal/fq;

    invoke-direct {v0}, Lcom/tapjoy/internal/fq;-><init>()V

    .line 3021
    sput-object v0, Lcom/tapjoy/internal/gv;->a:Lcom/tapjoy/internal/gv;

    .line 27
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Lcom/tapjoy/internal/gv;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/fq;->b:Ljava/util/Map;

    .line 39
    new-instance v0, Lcom/tapjoy/internal/fj;

    invoke-direct {v0}, Lcom/tapjoy/internal/fj;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/fq;->c:Lcom/tapjoy/internal/fj;

    .line 44
    new-instance v0, Lcom/tapjoy/internal/fq$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/fq$1;-><init>(Lcom/tapjoy/internal/fq;)V

    iput-object v0, p0, Lcom/tapjoy/internal/fq;->e:Lcom/tapjoy/internal/gb;

    .line 68
    return-void
.end method

.method public static a()V
    .registers 0

    .line 34
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .registers 7

    .line 82
    const/4 v0, 0x1

    if-eqz p1, :cond_57

    .line 1090
    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v1

    .line 1091
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_c

    .line 1092
    goto :goto_55

    .line 1094
    :cond_c
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 1095
    if-eqz p1, :cond_54

    .line 1116
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    .line 1117
    if-eqz v2, :cond_2e

    .line 1118
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1119
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v2, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v2, 0x0

    .line 1095
    :goto_2f
    if-nez v2, :cond_32

    goto :goto_54

    .line 1098
    :cond_32
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    .line 1099
    if-nez p1, :cond_39

    .line 1100
    goto :goto_55

    .line 1102
    :cond_39
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 1103
    iget-object v2, p0, Lcom/tapjoy/internal/fq;->b:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 1104
    if-eqz p1, :cond_52

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_52

    .line 1106
    goto :goto_55

    .line 1108
    :cond_52
    const/4 v3, 0x1

    goto :goto_55

    .line 1096
    :cond_54
    :goto_54
    nop

    .line 82
    :goto_55
    if-nez v3, :cond_63

    :cond_57
    iget-boolean p1, p0, Lcom/tapjoy/internal/fq;->d:Z

    if-nez p1, :cond_69

    iget-object p1, p0, Lcom/tapjoy/internal/fq;->c:Lcom/tapjoy/internal/fj;

    .line 83
    invoke-virtual {p1}, Lcom/tapjoy/internal/fj;->a()Z

    move-result p1

    if-eqz p1, :cond_69

    .line 84
    :cond_63
    iget-object p1, p0, Lcom/tapjoy/internal/fq;->e:Lcom/tapjoy/internal/gb;

    .line 2034
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/tapjoy/internal/gb;->c(Ljava/lang/Object;)Z

    .line 86
    :cond_69
    iput-boolean v0, p0, Lcom/tapjoy/internal/fq;->d:Z

    .line 87
    return-void
.end method

.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .registers 4
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/tapjoy/internal/ft;->d:Lcom/tapjoy/internal/ft$a;

    .line 78
    return-void
.end method
