.class public Landroid/databinding/DataBinderMapperProxy;
.super Landroid/databinding/DataBinderMapper;
.source "DataBinderMapperProxy.java"

# interfaces
.implements Lcom/didi/virtualapk/PluginManager$Callback;


# static fields
.field public static final TAG:Ljava/lang/String; = "VA.DataBinderMapperProxy"


# instance fields
.field private mCache:[Landroid/databinding/DataBinderMapper;

.field private final mMappers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/databinding/DataBinderMapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1, "source"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/databinding/DataBinderMapper;-><init>()V

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/databinding/DataBinderMapperProxy;->mMappers:Ljava/util/LinkedList;

    .line 26
    check-cast p1, Landroid/databinding/DataBinderMapper;

    .end local p1    # "source":Ljava/lang/Object;
    invoke-direct {p0, p1}, Landroid/databinding/DataBinderMapperProxy;->addMapper(Landroid/databinding/DataBinderMapper;)V

    .line 27
    return-void
.end method

.method private addMapper(Landroid/databinding/DataBinderMapper;)V
    .registers 6
    .param p1, "mapper"    # Landroid/databinding/DataBinderMapper;

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, "size":I
    iget-object v2, p0, Landroid/databinding/DataBinderMapperProxy;->mMappers:Ljava/util/LinkedList;

    monitor-enter v2

    .line 107
    :try_start_4
    iget-object v1, p0, Landroid/databinding/DataBinderMapperProxy;->mMappers:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 108
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/databinding/DataBinderMapperProxy;->mCache:[Landroid/databinding/DataBinderMapper;

    .line 109
    iget-object v1, p0, Landroid/databinding/DataBinderMapperProxy;->mMappers:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 110
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_36

    .line 112
    const-string v1, "VA.DataBinderMapperProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added mapper: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void

    .line 110
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v1
.end method

.method private getCache()[Landroid/databinding/DataBinderMapper;
    .registers 4

    .prologue
    .line 116
    iget-object v1, p0, Landroid/databinding/DataBinderMapperProxy;->mMappers:Ljava/util/LinkedList;

    monitor-enter v1

    .line 117
    :try_start_3
    iget-object v0, p0, Landroid/databinding/DataBinderMapperProxy;->mCache:[Landroid/databinding/DataBinderMapper;

    if-nez v0, :cond_19

    .line 118
    iget-object v0, p0, Landroid/databinding/DataBinderMapperProxy;->mMappers:Ljava/util/LinkedList;

    iget-object v2, p0, Landroid/databinding/DataBinderMapperProxy;->mMappers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/databinding/DataBinderMapper;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/databinding/DataBinderMapper;

    iput-object v0, p0, Landroid/databinding/DataBinderMapperProxy;->mCache:[Landroid/databinding/DataBinderMapper;

    .line 120
    :cond_19
    iget-object v0, p0, Landroid/databinding/DataBinderMapperProxy;->mCache:[Landroid/databinding/DataBinderMapper;

    monitor-exit v1

    return-object v0

    .line 121
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0
.end method


# virtual methods
.method public convertBrIdToString(I)Ljava/lang/String;
    .registers 7
    .param p1, "id"    # I

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/databinding/DataBinderMapperProxy;->getCache()[Landroid/databinding/DataBinderMapper;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v4, :cond_14

    aget-object v1, v3, v2

    .line 79
    .local v1, "mapper":Landroid/databinding/DataBinderMapper;
    invoke-virtual {v1, p1}, Landroid/databinding/DataBinderMapper;->convertBrIdToString(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "brId":Ljava/lang/String;
    if-eqz v0, :cond_11

    .line 86
    .end local v0    # "brId":Ljava/lang/String;
    .end local v1    # "mapper":Landroid/databinding/DataBinderMapper;
    :goto_10
    return-object v0

    .line 78
    .restart local v0    # "brId":Ljava/lang/String;
    .restart local v1    # "mapper":Landroid/databinding/DataBinderMapper;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 86
    .end local v0    # "brId":Ljava/lang/String;
    .end local v1    # "mapper":Landroid/databinding/DataBinderMapper;
    :cond_14
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getDataBinder(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)Landroid/databinding/ViewDataBinding;
    .registers 9
    .param p1, "bindingComponent"    # Landroid/databinding/DataBindingComponent;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "layoutId"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/databinding/DataBinderMapperProxy;->getCache()[Landroid/databinding/DataBinderMapper;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v4, :cond_14

    aget-object v0, v3, v2

    .line 34
    .local v0, "mapper":Landroid/databinding/DataBinderMapper;
    invoke-virtual {v0, p1, p2, p3}, Landroid/databinding/DataBinderMapper;->getDataBinder(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)Landroid/databinding/ViewDataBinding;

    move-result-object v1

    .line 35
    .local v1, "viewDataBinding":Landroid/databinding/ViewDataBinding;
    if-eqz v1, :cond_11

    .line 41
    .end local v0    # "mapper":Landroid/databinding/DataBinderMapper;
    .end local v1    # "viewDataBinding":Landroid/databinding/ViewDataBinding;
    :goto_10
    return-object v1

    .line 33
    .restart local v0    # "mapper":Landroid/databinding/DataBinderMapper;
    .restart local v1    # "viewDataBinding":Landroid/databinding/ViewDataBinding;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 41
    .end local v0    # "mapper":Landroid/databinding/DataBinderMapper;
    .end local v1    # "viewDataBinding":Landroid/databinding/ViewDataBinding;
    :cond_14
    const/4 v1, 0x0

    goto :goto_10
.end method

.method getDataBinder(Landroid/databinding/DataBindingComponent;[Landroid/view/View;I)Landroid/databinding/ViewDataBinding;
    .registers 9
    .param p1, "bindingComponent"    # Landroid/databinding/DataBindingComponent;
    .param p2, "view"    # [Landroid/view/View;
    .param p3, "layoutId"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/databinding/DataBinderMapperProxy;->getCache()[Landroid/databinding/DataBinderMapper;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v4, :cond_14

    aget-object v0, v3, v2

    .line 49
    .local v0, "mapper":Landroid/databinding/DataBinderMapper;
    invoke-virtual {v0, p1, p2, p3}, Landroid/databinding/DataBinderMapper;->getDataBinder(Landroid/databinding/DataBindingComponent;[Landroid/view/View;I)Landroid/databinding/ViewDataBinding;

    move-result-object v1

    .line 50
    .local v1, "viewDataBinding":Landroid/databinding/ViewDataBinding;
    if-eqz v1, :cond_11

    .line 56
    .end local v0    # "mapper":Landroid/databinding/DataBinderMapper;
    .end local v1    # "viewDataBinding":Landroid/databinding/ViewDataBinding;
    :goto_10
    return-object v1

    .line 48
    .restart local v0    # "mapper":Landroid/databinding/DataBinderMapper;
    .restart local v1    # "viewDataBinding":Landroid/databinding/ViewDataBinding;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 56
    .end local v0    # "mapper":Landroid/databinding/DataBinderMapper;
    .end local v1    # "viewDataBinding":Landroid/databinding/ViewDataBinding;
    :cond_14
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getLayoutId(Ljava/lang/String;)I
    .registers 8
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Landroid/databinding/DataBinderMapperProxy;->getCache()[Landroid/databinding/DataBinderMapper;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_7
    if-ge v3, v5, :cond_15

    aget-object v1, v4, v3

    .line 64
    .local v1, "mapper":Landroid/databinding/DataBinderMapper;
    invoke-virtual {v1, p1}, Landroid/databinding/DataBinderMapper;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    .line 65
    .local v0, "layoutId":I
    if-eqz v0, :cond_12

    .line 71
    .end local v0    # "layoutId":I
    .end local v1    # "mapper":Landroid/databinding/DataBinderMapper;
    :goto_11
    return v0

    .line 63
    .restart local v0    # "layoutId":I
    .restart local v1    # "mapper":Landroid/databinding/DataBinderMapper;
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .end local v0    # "layoutId":I
    .end local v1    # "mapper":Landroid/databinding/DataBinderMapper;
    :cond_15
    move v0, v2

    .line 71
    goto :goto_11
.end method

.method public onAddedLoadedPlugin(Lcom/didi/virtualapk/internal/LoadedPlugin;)V
    .registers 10
    .param p1, "plugin"    # Lcom/didi/virtualapk/internal/LoadedPlugin;

    .prologue
    .line 92
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android.databinding.DataBinderMapper_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2e

    const/16 v7, 0x5f

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "clsName":Ljava/lang/String;
    const-string v4, "VA.DataBinderMapperProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Try to find the class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v1, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 95
    .local v0, "cls":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 97
    .local v3, "obj":Ljava/lang/Object;
    check-cast v3, Landroid/databinding/DataBinderMapper;

    .end local v3    # "obj":Ljava/lang/Object;
    invoke-direct {p0, v3}, Landroid/databinding/DataBinderMapperProxy;->addMapper(Landroid/databinding/DataBinderMapper;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_49} :catch_4a

    .line 102
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v1    # "clsName":Ljava/lang/String;
    :goto_49
    return-void

    .line 99
    :catch_4a
    move-exception v2

    .line 100
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "VA.DataBinderMapperProxy"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_49
.end method
