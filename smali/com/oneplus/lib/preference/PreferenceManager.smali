.class public Lcom/oneplus/lib/preference/PreferenceManager;
.super Ljava/lang/Object;
.source "PreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/preference/PreferenceManager$OnActivityDestroyListener;,
        Lcom/oneplus/lib/preference/PreferenceManager$OnActivityStopListener;,
        Lcom/oneplus/lib/preference/PreferenceManager$OnActivityResultListener;,
        Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mActivityDestroyListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/lib/preference/PreferenceManager$OnActivityDestroyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityResultListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/lib/preference/PreferenceManager$OnActivityResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityStopListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/lib/preference/PreferenceManager$OnActivityStopListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mFragment:Lcom/oneplus/lib/preference/PreferenceFragment;

.field private mNextId:J

.field private mNextRequestCode:I

.field private mNoCommit:Z

.field private mOnPreferenceTreeClickListener:Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;

.field private mPreferenceScreen:Lcom/oneplus/lib/preference/PreferenceScreen;

.field private mPreferencesScreens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/DialogInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSharedPreferencesMode:I

.field private mSharedPreferencesName:Ljava/lang/String;

.field private mStorage:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "firstRequestCode"    # I

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mNextId:J

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mStorage:I

    .line 152
    iput-object p1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivity:Landroid/app/Activity;

    .line 153
    iput p2, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mNextRequestCode:I

    .line 155
    invoke-direct {p0, p1}, Lcom/oneplus/lib/preference/PreferenceManager;->init(Landroid/content/Context;)V

    .line 156
    return-void
.end method

.method private dismissAllScreens()V
    .locals 3

    .line 866
    monitor-enter p0

    .line 868
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    if-nez v0, :cond_0

    .line 869
    monitor-exit p0

    return-void

    .line 872
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 873
    .local v0, "screensToDismiss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/DialogInterface;>;"
    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 874
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 876
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 877
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/DialogInterface;

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    .line 876
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 879
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 874
    .end local v0    # "screensToDismiss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/DialogInterface;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 171
    iput-object p1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mContext:Landroid/content/Context;

    .line 173
    invoke-static {p1}, Lcom/oneplus/lib/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 174
    return-void
.end method


# virtual methods
.method addPreferencesScreen(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "screen"    # Landroid/content/DialogInterface;

    .line 832
    monitor-enter p0

    .line 834
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    if-nez v0, :cond_0

    .line 835
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 839
    monitor-exit p0

    .line 840
    return-void

    .line 839
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dispatchActivityDestroy()V
    .locals 4

    .line 799
    const/4 v0, 0x0

    .line 801
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/preference/PreferenceManager$OnActivityDestroyListener;>;"
    monitor-enter p0

    .line 802
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 803
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 805
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    if-eqz v0, :cond_1

    .line 808
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 809
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 810
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/preference/PreferenceManager$OnActivityDestroyListener;

    invoke-interface {v3}, Lcom/oneplus/lib/preference/PreferenceManager$OnActivityDestroyListener;->onActivityDestroy()V

    .line 809
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 815
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/preference/PreferenceManager;->dismissAllScreens()V

    .line 816
    return-void

    .line 805
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method dispatchActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 701
    monitor-enter p0

    .line 702
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 703
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 704
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/preference/PreferenceManager$OnActivityResultListener;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 707
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 708
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/preference/PreferenceManager$OnActivityResultListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/oneplus/lib/preference/PreferenceManager$OnActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 709
    goto :goto_1

    .line 707
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 712
    .end local v2    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 704
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/preference/PreferenceManager$OnActivityResultListener;>;"
    .end local v1    # "N":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method dispatchActivityStop()V
    .locals 4

    .line 753
    monitor-enter p0

    .line 754
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 755
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 756
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/preference/PreferenceManager$OnActivityStopListener;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 758
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 759
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 760
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/preference/PreferenceManager$OnActivityStopListener;

    invoke-interface {v3}, Lcom/oneplus/lib/preference/PreferenceManager$OnActivityStopListener;->onActivityStop()V

    .line 759
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 762
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 756
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/preference/PreferenceManager$OnActivityStopListener;>;"
    .end local v1    # "N":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method dispatchNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 859
    invoke-direct {p0}, Lcom/oneplus/lib/preference/PreferenceManager;->dismissAllScreens()V

    .line 860
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/CharSequence;

    .line 507
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mPreferenceScreen:Lcom/oneplus/lib/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 508
    const/4 v0, 0x0

    return-object v0

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mPreferenceScreen:Lcom/oneplus/lib/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method getActivity()Landroid/app/Activity;
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 604
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mNoCommit:Z

    if-eqz v0, :cond_1

    .line 605
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 606
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0

    .line 611
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method getFragment()Lcom/oneplus/lib/preference/PreferenceFragment;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mFragment:Lcom/oneplus/lib/preference/PreferenceFragment;

    return-object v0
.end method

.method getOnPreferenceTreeClickListener()Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;
    .locals 1

    .line 892
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;

    return-object v0
.end method

.method getPreferenceScreen()Lcom/oneplus/lib/preference/PreferenceScreen;
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mPreferenceScreen:Lcom/oneplus/lib/preference/PreferenceScreen;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .line 436
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    .line 438
    iget v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mStorage:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 443
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mContext:Landroid/content/Context;

    goto :goto_1

    .line 440
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 441
    .local v0, "storageContext":Landroid/content/Context;
    :goto_0
    nop

    .line 443
    :goto_1
    nop

    .line 447
    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    iget v2, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mSharedPreferencesMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 451
    .end local v0    # "storageContext":Landroid/content/Context;
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method registerOnActivityDestroyListener(Lcom/oneplus/lib/preference/PreferenceManager$OnActivityDestroyListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/lib/preference/PreferenceManager$OnActivityDestroyListener;

    .line 770
    monitor-enter p0

    .line 771
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 772
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 776
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 778
    :cond_1
    monitor-exit p0

    .line 779
    return-void

    .line 778
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removePreferencesScreen(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "screen"    # Landroid/content/DialogInterface;

    .line 843
    monitor-enter p0

    .line 845
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    if-nez v0, :cond_0

    .line 846
    monitor-exit p0

    return-void

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 850
    monitor-exit p0

    .line 851
    return-void

    .line 850
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setFragment(Lcom/oneplus/lib/preference/PreferenceFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/oneplus/lib/preference/PreferenceFragment;

    .line 180
    iput-object p1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mFragment:Lcom/oneplus/lib/preference/PreferenceFragment;

    .line 181
    return-void
.end method

.method setOnPreferenceTreeClickListener(Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;

    .line 888
    iput-object p1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;

    .line 889
    return-void
.end method

.method public setSharedPreferencesName(Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferencesName"    # Ljava/lang/String;

    .line 324
    iput-object p1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 326
    return-void
.end method

.method shouldCommit()Z
    .locals 1

    .line 623
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mNoCommit:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method unregisterOnActivityDestroyListener(Lcom/oneplus/lib/preference/PreferenceManager$OnActivityDestroyListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/lib/preference/PreferenceManager$OnActivityDestroyListener;

    .line 787
    monitor-enter p0

    .line 788
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 791
    :cond_0
    monitor-exit p0

    .line 792
    return-void

    .line 791
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
