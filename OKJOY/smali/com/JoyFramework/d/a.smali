.class public Lcom/JoyFramework/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/JoyFramework/d/a;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .registers 2

    .prologue
    .line 23
    sget-object v0, Lcom/JoyFramework/d/a;->a:Ljava/util/List;

    if-eqz v0, :cond_22

    sget-object v0, Lcom/JoyFramework/d/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_22

    .line 24
    sget-object v0, Lcom/JoyFramework/d/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 25
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_12

    .line 28
    :cond_22
    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 16
    if-eqz p0, :cond_f

    .line 17
    sget-object v0, Lcom/JoyFramework/d/a;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 18
    sget-object v0, Lcom/JoyFramework/d/a;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_f
    return-void
.end method

.method public static b()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 30
    sget-object v0, Lcom/JoyFramework/d/a;->a:Ljava/util/List;

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/JoyFramework/d/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1d

    .line 31
    sget-object v0, Lcom/JoyFramework/d/a;->a:Ljava/util/List;

    sget-object v1, Lcom/JoyFramework/d/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 33
    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public static c()I
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/JoyFramework/d/a;->a:Ljava/util/List;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/JoyFramework/d/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 37
    sget-object v0, Lcom/JoyFramework/d/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 39
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method
