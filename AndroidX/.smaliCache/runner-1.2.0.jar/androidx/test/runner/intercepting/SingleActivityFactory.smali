.class public abstract Landroidx/test/runner/intercepting/SingleActivityFactory;
.super Ljava/lang/Object;
.source "SingleActivityFactory.java"

# interfaces
.implements Landroidx/test/runner/intercepting/InterceptingActivityFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Activity;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/test/runner/intercepting/InterceptingActivityFactory;"
    }
.end annotation


# instance fields
.field private final activityClassToIntercept:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityClassToIntercept"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 33
    .local p0, "this":Landroidx/test/runner/intercepting/SingleActivityFactory;, "Landroidx/test/runner/intercepting/SingleActivityFactory<TT;>;"
    .local p1, "activityClassToIntercept":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Landroidx/test/runner/intercepting/SingleActivityFactory;->activityClassToIntercept:Ljava/lang/Class;

    .line 36
    return-void
.end method


# virtual methods
.method protected abstract create(Landroid/content/Intent;)Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")TT;"
        }
    .end annotation
.end method

.method public final create(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .registers 7
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "classLoader",
            "className",
            "intent"
        }
    .end annotation

    .line 45
    .local p0, "this":Landroidx/test/runner/intercepting/SingleActivityFactory;, "Landroidx/test/runner/intercepting/SingleActivityFactory<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Landroidx/test/runner/intercepting/SingleActivityFactory;->shouldIntercept(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 48
    invoke-virtual {p0, p3}, Landroidx/test/runner/intercepting/SingleActivityFactory;->create(Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    return-object v0

    .line 46
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 47
    const-string v2, "Can\'t create instance of %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getActivityClassToIntercept()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 57
    .local p0, "this":Landroidx/test/runner/intercepting/SingleActivityFactory;, "Landroidx/test/runner/intercepting/SingleActivityFactory<TT;>;"
    iget-object v0, p0, Landroidx/test/runner/intercepting/SingleActivityFactory;->activityClassToIntercept:Ljava/lang/Class;

    return-object v0
.end method

.method public final shouldIntercept(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Z
    .registers 5
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "classLoader",
            "className",
            "intent"
        }
    .end annotation

    .line 40
    .local p0, "this":Landroidx/test/runner/intercepting/SingleActivityFactory;, "Landroidx/test/runner/intercepting/SingleActivityFactory<TT;>;"
    iget-object v0, p0, Landroidx/test/runner/intercepting/SingleActivityFactory;->activityClassToIntercept:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
