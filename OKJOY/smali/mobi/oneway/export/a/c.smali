.class public Lmobi/oneway/export/a/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lmobi/oneway/export/enums/AdType;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmobi/oneway/export/enums/AdType;->splash:Lmobi/oneway/export/enums/AdType;

    iput-object v0, p0, Lmobi/oneway/export/a/c;->a:Lmobi/oneway/export/enums/AdType;

    iput-object p1, p0, Lmobi/oneway/export/a/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/view/ViewGroup;Lmobi/oneway/export/AdListener/OWSplashAdListener;J)V
    .registers 14

    const/4 v3, 0x0

    iget-object v0, p0, Lmobi/oneway/export/a/c;->b:Ljava/lang/String;

    invoke-static {v0, v3}, Lmobi/oneway/export/f/d;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmobi/oneway/export/a/c;->a:Lmobi/oneway/export/enums/AdType;

    invoke-static {v0}, Lmobi/oneway/export/f/d;->a(Lmobi/oneway/export/enums/AdType;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_e

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/oneway/export/f/c;

    iget-object v3, p0, Lmobi/oneway/export/a/c;->b:Ljava/lang/String;

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lmobi/oneway/export/f/c;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/view/ViewGroup;Lmobi/oneway/export/AdListener/OWSplashAdListener;J)V

    goto :goto_e
.end method
